
void main(List<String> args) {
  

List<String> list = ["5", "-2", "4", "C", "D", "9", "+", "+"];


List record = [];


for (var item in list) {
if (item == "D"){
  int recordL = record.last *2;
  record.add(recordL);
}
else if (item == "C"){
record.removeLast();
}
else if (item == "+"){
record.add(record[record.length-1]+ record[record.length-2]);
}
else {
  record.add(int.parse(item));
}
}
int result =0;
for (int item in record) {
result += item;
}
print((record.length ==0) ? "Since the record is empty, the total sum is 0." :"The total sum is: "+  record.map((e) => e).join(" + ") + " = $result");


 

}
