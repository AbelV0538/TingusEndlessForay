// Reduce enemy HP
other.hp -= 1;

// Destroy bullet
instance_destroy();

// Check if enemy should die
if (other.hp <= 0) {
    instance_destroy(other);
}