class MyClass

  def method1
    #this is public
  end

  protected #Methods declared from here will be protected
  def method2
    #I'm protected!
  end

  def method3
    #I'm protected too!
  end

  private #Same behaviour, but "private"
  def method4
    #I'm a private method
  end

  def method5
    #I'm private too!
  end

  public #Same behaviour too, but public!
  def method6
    #I'm a public method!
  end
end

