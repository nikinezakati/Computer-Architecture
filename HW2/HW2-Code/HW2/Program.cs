using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace HW2
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] assembleyCMD = Console.ReadLine().Split(", ");

            Regex temp = new Regex(@"\s\s+");

            assembleyCMD[0] = temp.Replace(assembleyCMD[0], " ");
            MIPS mips = new MIPS();
            
            if (assembleyCMD[0][0] == ' ')
                assembleyCMD[0] = assembleyCMD[0].Remove(0, 1);

            if (assembleyCMD.Length == 1)
            {
                string[] instruction = assembleyCMD[0].Split(" ");
                if (instruction.Length == 1)
                {
                    assembleyCMD[0] = assembleyCMD[0].Remove(assembleyCMD[0].Length - 1, 1);
                    Console.WriteLine(mips.StringToBinary(assembleyCMD[0], 32));
                }
                else
                {
                    Console.WriteLine(mips.SetInstructions(instruction));
                }
            }
            else
            {
                string[] instruction = new string[assembleyCMD.Length + 1];
                instruction[0] = assembleyCMD[0].Split(" ")[0];
                instruction[1] = assembleyCMD[0].Split(" ")[1];
                for (int i = 2; i < assembleyCMD.Length + 1; i++)
                {
                    instruction[i] = assembleyCMD[i - 1];
                }
                Console.WriteLine(mips.SetInstructions(instruction));
            }
        }
    }
    class MIPS
    {
        Dictionary<string, int> Registers = new Dictionary<string, int>();
        Dictionary<string, string> Func = new Dictionary<string, string>();
        Dictionary<string, string> OPCodes = new Dictionary<string, string>();
        public MIPS()
        {
            Registers.Add("$gp", 28);
            Registers.Add("$sp", 29);
            Registers.Add("$fp", 30);
            Registers.Add("$ra", 31);

            Registers.Add("$t0", 8);
            Registers.Add("$t1", 9);
            Registers.Add("$t2", 10);
            Registers.Add("$t3", 11);
            Registers.Add("$t4", 12);
            Registers.Add("$t5", 13);
            Registers.Add("$t6", 14);
            Registers.Add("$t7", 15);
            Registers.Add("$t8", 24);
            Registers.Add("$t9", 25);
            Registers.Add("$zero", 0);
            Registers.Add("$v0", 2);
            Registers.Add("$v1", 3);
            Registers.Add("$a0", 4);
            Registers.Add("$a1", 5);
            Registers.Add("$a2", 6);
            Registers.Add("$a3", 7);
            Registers.Add("$s0", 16);
            Registers.Add("$s1", 17);
            Registers.Add("$s2", 18);
            Registers.Add("$s3", 19);
            Registers.Add("$s4", 20);
            Registers.Add("$s5", 21);
            Registers.Add("$s6", 22);
            Registers.Add("$s7", 23);

            Func.Add("add", "100000");
            Func.Add("addu", "100001");
            Func.Add("and", "100100");
            Func.Add("nor", "100111");
            Func.Add("or", "100101");
            Func.Add("sll", "000000");
            Func.Add("sra", "000011");
            Func.Add("xor", "100110");
            Func.Add("slt", "101010");
            Func.Add("sltu", "101001");

            OPCodes.Add("add", "000000");
            OPCodes.Add("addu", "000000");
            OPCodes.Add("and", "000000");
            OPCodes.Add("nor", "000000");
            OPCodes.Add("or", "000000");
            OPCodes.Add("sll", "000000");
            OPCodes.Add("sra", "000000");
            OPCodes.Add("xor", "000000");
            OPCodes.Add("slt", "000000");
            OPCodes.Add("sltu", "000000");
            OPCodes.Add("addi", "001000");
            OPCodes.Add("andi", "001100");
            OPCodes.Add("ori", "001101");
            OPCodes.Add("xori", "001110");
            OPCodes.Add("slti", "001010");
            OPCodes.Add("beq", "000100");
            OPCodes.Add("bne", "000101");
            OPCodes.Add("lb", "100000");
            OPCodes.Add("lbu", "100100");
            OPCodes.Add("lw", "100011");
            OPCodes.Add("lui", "001111");
            OPCodes.Add("sb", "101000");
            OPCodes.Add("sw", "101011");
            OPCodes.Add("j", "000010");
            OPCodes.Add("jal", "000011");
        }
        public string SetInstructions(string[] instruction)
        {
            foreach (var inst in instruction)
            {
                Console.WriteLine(inst);
            }
            if (OPCodes[instruction[0]] == "000000")
            {
                return R_Format(instruction);
            }
            else if (OPCodes[instruction[0]] == "000010"
                    || OPCodes[instruction[0]] == "000011")
            {
                return J_Format(instruction);
            }
            else
            {
                return I_Format(instruction);
            }
        }
        public string R_Format(string[] instruction)
        {
            string opcode = "000000";
            string rs = DecimalToBinary(Registers[instruction[2]], 5);

            Console.WriteLine("rs is : {0}, {1}", rs, Registers[instruction[2]]);

            string rt = DecimalToBinary(Registers[instruction[3]], 5);
            Console.WriteLine("rt is : {0}, {1}", rt, Registers[instruction[3]]);

            string rd = DecimalToBinary(Registers[instruction[1]], 5);
            Console.WriteLine("rd is : {0}, {1}", rd, Registers[instruction[1]]);

            string shamt = "00000";
            string funct = Func[instruction[0]];

            return opcode + rs + rt + rd + shamt + funct;
        }
        public string J_Format(string[] instruction)
        {
            string opcode = OPCodes[instruction[0]];
            Console.WriteLine(instruction[1]);

            Console.WriteLine(StringToBinary(instruction[1], 26));

            string address = StringToBinary(instruction[1], 26);

            return opcode + address;
        }
        public string I_Format(string[] instruction)
        {
            string opcode = OPCodes[instruction[0]];
            string rs = "";
            string rt = "";
            string AddressConst = "";
            if (instruction.Length == 4) // R wise 
            {
                rs = DecimalToBinary(Registers[instruction[2]], 5);
                rt = DecimalToBinary(Registers[instruction[1]], 5);
                if (opcode == "000100" && opcode == "000101")
                {
                    AddressConst = StringToBinary(instruction[3], 16);
                }
                else
                {
                    AddressConst = DecimalToBinary(int.Parse(instruction[3]), 16);
                }
            }
            else if (instruction.Length == 3)
            {
                if (opcode == "001111")
                {
                    rs = "00000";
                    rt = DecimalToBinary(Registers[instruction[1]], 5);
                    AddressConst = DecimalToBinary(int.Parse(instruction[2]), 16);
                }
                else
                {
                    instruction[2] = instruction[2].Replace('(', ' ');
                    instruction[2] = instruction[2].Replace(')', ' ');
                    string[] s = instruction[2].Split(' ');
                    rs = DecimalToBinary(Registers[s[1]], 5);
                    rt = DecimalToBinary(Registers[instruction[1]], 5);
                    AddressConst = DecimalToBinary(int.Parse(s[0]), 16);
                }
            }
            return opcode + rs + rt + AddressConst;
        }
        public string DecimalToBinary(int decim, int bits)
        {
            string s = "";
            bool bNegative = (Math.Sign(decim) == -1);
            if (bNegative)
            {
                decim = Math.Abs(decim);
                decim = (int)Math.Pow(2, bits) - decim;
            }
            while (decim > 0)
            {
                s += (decim % 2);
                decim /= 2;
            }
            string result = s;
            if (s.Length < bits)
            {
                int cnt = bits - s.Length;
                for (int i = 0; i < cnt; i++)
                {
                    result += 0;
                }
            }
            char[] temp = result.ToCharArray();
            Array.Reverse(temp);
            result = new string(temp);
            return result;
        }
        public string unsigned_DecimalToBinary(int decim, int bits)
        {
            string s = "";
            while (decim > 0)
            {
                s += (decim % 2);
                decim /= 2;
            }
            string result = s;
            if (s.Length < bits)
            {
                int cnt = bits - s.Length;
                for (int i = 0; i < cnt; i++)
                {
                    result += 0;
                }
            }
            char[] temp = result.ToCharArray();
            Array.Reverse(temp);
            result = new string(temp);
            return result;
        }
        public string StringToBinary(string s, int bits)
        {
            string ascii = "";
            foreach (var ch in s)
            {
                ascii += unsigned_DecimalToBinary((int)ch, 8);
            }
            string result = "";
            if (ascii.ToString().Length < bits)
            {
                int cnt = bits - ascii.ToString().Length;
                for (int i = 0; i < cnt; i++)
                {
                    result += 0;
                }
            }
            result += ascii;
            return result;
        }
    }
}
