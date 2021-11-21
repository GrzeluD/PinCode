class PinCode
  @@digit = 5

  def initialize(*args)
    args.each do |arg|
      decode_pin(arg, @@digit)
    end
  end

  def decode_pin(arg, digit)
    arg.split("").each do |i|
      case i
      when "U"
        if digit == 1 || digit == 2 || digit == 3
          digit
        else
          digit -= 3
        end
      when "R"
        if digit == 3 || digit == 6 || digit == 9
          digit
        else
          digit += 1
        end
      when "D"
        if digit == 7 || digit == 8 || digit == 9
          digit
        else
          digit += 3
        end
      when "L"
        if digit == 1 || digit == 4 || digit == 7
          digit
        else
          digit -= 1
        end
      else
      end
    end
    @@digit = digit
    print @@digit
  end
end

PinCode.new("RLRLLLULULULUUDUULULRDDLURURDDLDUUDDLRDDUUUDD", "LDLRLDDDLUDRDRRUDUURLRULLUDDRLURLUULDLLRLLUDLRLRUDLULRLRRL", "LLRRDURRDLDULRDUDLRDRDRURULDU", "DULRRDRLRLUDLLURURLLRLRDLLDLLDRDUURL", "DUULULUUDUDLLRLRURULLDLRRLURDLLDUDUDDRURRLUDULULD")
