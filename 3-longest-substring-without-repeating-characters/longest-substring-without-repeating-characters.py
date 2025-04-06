class Solution(object):
    def lengthOfLongestSubstring(self, s):
        window = set()
        length = 0
        left = 0

        for i in range(len(s)):
            while s[i] in window:
                window.remove(s[left])
                left += 1
            
            length = max(length, i- left +1)
            window.add(s[i])
        return length        