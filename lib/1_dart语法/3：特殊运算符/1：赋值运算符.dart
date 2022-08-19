void main(List<String> args) {
  // ??= 表示原来的数据有值是不执行后面的数据，原来的数据为null时，后面的赋值给前面的数据
  var name = "zs";
  name ??= "lisi1";
  print(name);

// ?? 如果前面的数据有值，则使用前面的值，如果前面的数据没有值，则使用后面的数据
  var name2 = null;
  var name3 = name2 ?? "lisi2";
  print(name3);
}
