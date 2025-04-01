package main

import "testing"

func TestAdd(t *testing.T) {
	result := 3 + 2
	expected := 5
	if result != expected {
		t.Errorf("Add(2, 3) = %d; want %d", result, expected)
	}
}
