void validateAgeg(int age) {
  if (age <= 0) {
    throw Exception("L'age n'est pas valide !");
  }
}

void main() {
  // validateAgeg(-5);

  try {
    validateAgeg(5);
  } on Exception catch (e) {
    print("Entré dans le catch");
    //par défaut si pas même type
  } catch (e) {
    print("par défaut");
  } finally {
    print("instruction éxécutée dans tous les cas");
  }

}
