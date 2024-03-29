# ��������� ���������� �������������� ��������������� �����
rnd_data <- runif(100, 2, 5)
rnd_data

# ��������������� ����� �����
whole_r_nums <- sample(2:5, 100, replace=T)
whole_r_nums

marks_table <- table(whole_r_nums)
marks_table

# �������
marks_mean <- mean(marks_table)

# ���������� data frame
marks_df <- as.data.frame(marks_table)
marks_df

# ������� ������ �� ������� � �������� � ������� ����������� ������� � ����������
# ����������� �������
len <- length(whole_r_nums)
marks_df[,3] <- mapply(function(n) n/len * 100, marks_df[,2])
colnames(marks_df) <- c("������", "���-��", "%")
marks_df