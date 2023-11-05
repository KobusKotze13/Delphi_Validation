library Validation;


uses
  System.SysUtils,
  System.Classes,
  RegularExpressions;

  function IsValidNumber(const phoneNumber: string): Boolean;
  var
  regex: TRegEx;
  begin
    //checks if the phone number consists of 10 digits and starts with 0
    regex := TRegEx.Create('^[0]\d{9}$');
    Result := regex.IsMatch(phoneNumber);
  end;

  function IsValidPassword(const password: string): Boolean;
  var
    regex: TRegEx;
  begin
    //check if the password is 8 characters long and contains at least one special character
    regex := TRegEx.Create('^(?=.*[#^@$!%*?&])[A-Za-z\d@$#^!%*?&]{8,}$');
    Result := regex.IsMatch(password);
  end;

  function IsValidEmail(const email: string): Boolean;
  var
    regex: TRegEx;
  begin
    //check if the email address is in a valid format
    regex := TRegEx.Create('^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');
    Result := regex.IsMatch(email);
  end;

  function IsValidName(Const Name: String): Boolean;
  var
    regex: TRegEx;
  begin
    //check if name is valid
    regex := TRegEx.Create('^[A-Z][a-z]* [A-Z][a-z]*$');
    Result := regex.IsMatch(Name);
  end;

  function IsValidWage(Const Wage: String): Boolean;
  var
    regex: TRegEx;
  begin
    //Check if wage is valid
    regex := TRegEx.Create('^\d{1,3}(?:\.\d{0,2})?$');
    Result := regex.IsMatch(Wage);
  end;

exports
  IsValidNumber, IsValidPassword, IsValidEmail, IsValidName, IsValidWage;


{$R *.res}

begin
end.
