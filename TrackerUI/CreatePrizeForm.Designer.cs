namespace TrackerUI
{
    partial class CreatePrizeForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.prizePercentageValue = new System.Windows.Forms.TextBox();
            this.percentageLabel = new System.Windows.Forms.Label();
            this.prizeAmountValue = new System.Windows.Forms.TextBox();
            this.prizeAmountLabel = new System.Windows.Forms.Label();
            this.placeNameValue = new System.Windows.Forms.TextBox();
            this.placeNameLabel = new System.Windows.Forms.Label();
            this.placeNumberValue = new System.Windows.Forms.TextBox();
            this.prizeNumberLabel = new System.Windows.Forms.Label();
            this.createTeamButton = new System.Windows.Forms.Button();
            this.createPrizeLable = new System.Windows.Forms.Label();
            this.orLabel = new System.Windows.Forms.Label();
            this.creatPrizeButton = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // prizePercentageValue
            // 
            this.prizePercentageValue.Location = new System.Drawing.Point(193, 339);
            this.prizePercentageValue.Name = "prizePercentageValue";
            this.prizePercentageValue.Size = new System.Drawing.Size(210, 20);
            this.prizePercentageValue.TabIndex = 38;
            this.prizePercentageValue.Text = "0";
            // 
            // percentageLabel
            // 
            this.percentageLabel.AutoSize = true;
            this.percentageLabel.Font = new System.Drawing.Font("Segoe UI", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.percentageLabel.ForeColor = System.Drawing.SystemColors.Highlight;
            this.percentageLabel.Location = new System.Drawing.Point(11, 322);
            this.percentageLabel.Name = "percentageLabel";
            this.percentageLabel.Size = new System.Drawing.Size(155, 37);
            this.percentageLabel.TabIndex = 37;
            this.percentageLabel.Text = "Percentage ";
            // 
            // prizeAmountValue
            // 
            this.prizeAmountValue.Location = new System.Drawing.Point(193, 189);
            this.prizeAmountValue.Name = "prizeAmountValue";
            this.prizeAmountValue.Size = new System.Drawing.Size(210, 20);
            this.prizeAmountValue.TabIndex = 36;
            this.prizeAmountValue.Text = "0";
            // 
            // prizeAmountLabel
            // 
            this.prizeAmountLabel.AutoSize = true;
            this.prizeAmountLabel.Font = new System.Drawing.Font("Segoe UI", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.prizeAmountLabel.ForeColor = System.Drawing.SystemColors.Highlight;
            this.prizeAmountLabel.Location = new System.Drawing.Point(14, 175);
            this.prizeAmountLabel.Name = "prizeAmountLabel";
            this.prizeAmountLabel.Size = new System.Drawing.Size(176, 37);
            this.prizeAmountLabel.TabIndex = 35;
            this.prizeAmountLabel.Text = "Prize Amount";
            // 
            // placeNameValue
            // 
            this.placeNameValue.Location = new System.Drawing.Point(193, 135);
            this.placeNameValue.Name = "placeNameValue";
            this.placeNameValue.Size = new System.Drawing.Size(210, 20);
            this.placeNameValue.TabIndex = 34;
            // 
            // placeNameLabel
            // 
            this.placeNameLabel.AutoSize = true;
            this.placeNameLabel.Font = new System.Drawing.Font("Segoe UI", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.placeNameLabel.ForeColor = System.Drawing.SystemColors.Highlight;
            this.placeNameLabel.Location = new System.Drawing.Point(14, 121);
            this.placeNameLabel.Name = "placeNameLabel";
            this.placeNameLabel.Size = new System.Drawing.Size(157, 37);
            this.placeNameLabel.TabIndex = 32;
            this.placeNameLabel.Text = "Place Name";
            // 
            // placeNumberValue
            // 
            this.placeNumberValue.Location = new System.Drawing.Point(193, 82);
            this.placeNumberValue.Name = "placeNumberValue";
            this.placeNumberValue.Size = new System.Drawing.Size(210, 20);
            this.placeNumberValue.TabIndex = 31;
            this.placeNumberValue.TextChanged += new System.EventHandler(this.placeNumberValue_TextChanged);
            // 
            // prizeNumberLabel
            // 
            this.prizeNumberLabel.AutoSize = true;
            this.prizeNumberLabel.Font = new System.Drawing.Font("Segoe UI", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.prizeNumberLabel.ForeColor = System.Drawing.SystemColors.Highlight;
            this.prizeNumberLabel.Location = new System.Drawing.Point(14, 68);
            this.prizeNumberLabel.Name = "prizeNumberLabel";
            this.prizeNumberLabel.Size = new System.Drawing.Size(183, 37);
            this.prizeNumberLabel.TabIndex = 30;
            this.prizeNumberLabel.Text = "Place Number";
            // 
            // createTeamButton
            // 
            this.createTeamButton.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.createTeamButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.DarkGray;
            this.createTeamButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.createTeamButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.createTeamButton.Font = new System.Drawing.Font("Segoe UI Semibold", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.createTeamButton.ForeColor = System.Drawing.SystemColors.Highlight;
            this.createTeamButton.Location = new System.Drawing.Point(347, 793);
            this.createTeamButton.Name = "createTeamButton";
            this.createTeamButton.Size = new System.Drawing.Size(229, 51);
            this.createTeamButton.TabIndex = 39;
            this.createTeamButton.Text = "Create Team";
            this.createTeamButton.UseVisualStyleBackColor = true;
            // 
            // createPrizeLable
            // 
            this.createPrizeLable.AutoSize = true;
            this.createPrizeLable.Font = new System.Drawing.Font("Segoe UI Light", 27.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.createPrizeLable.ForeColor = System.Drawing.SystemColors.Highlight;
            this.createPrizeLable.Location = new System.Drawing.Point(12, 9);
            this.createPrizeLable.Name = "createPrizeLable";
            this.createPrizeLable.Size = new System.Drawing.Size(209, 50);
            this.createPrizeLable.TabIndex = 33;
            this.createPrizeLable.Text = "Create Prize";
            // 
            // orLabel
            // 
            this.orLabel.AutoSize = true;
            this.orLabel.Font = new System.Drawing.Font("Segoe UI", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.orLabel.ForeColor = System.Drawing.SystemColors.Highlight;
            this.orLabel.Location = new System.Drawing.Point(158, 255);
            this.orLabel.Name = "orLabel";
            this.orLabel.Size = new System.Drawing.Size(75, 37);
            this.orLabel.TabIndex = 40;
            this.orLabel.Text = "-OR-";
            // 
            // creatPrizeButton
            // 
            this.creatPrizeButton.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.creatPrizeButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.DarkGray;
            this.creatPrizeButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.creatPrizeButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.creatPrizeButton.Font = new System.Drawing.Font("Segoe UI Semibold", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.creatPrizeButton.ForeColor = System.Drawing.SystemColors.Highlight;
            this.creatPrizeButton.Location = new System.Drawing.Point(165, 446);
            this.creatPrizeButton.Name = "creatPrizeButton";
            this.creatPrizeButton.Size = new System.Drawing.Size(229, 51);
            this.creatPrizeButton.TabIndex = 41;
            this.creatPrizeButton.Text = "Create Prize";
            this.creatPrizeButton.UseVisualStyleBackColor = true;
            this.creatPrizeButton.Click += new System.EventHandler(this.creatPrizeButton_Click);
            // 
            // CreatePrizeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(632, 588);
            this.Controls.Add(this.creatPrizeButton);
            this.Controls.Add(this.orLabel);
            this.Controls.Add(this.prizePercentageValue);
            this.Controls.Add(this.percentageLabel);
            this.Controls.Add(this.prizeAmountValue);
            this.Controls.Add(this.prizeAmountLabel);
            this.Controls.Add(this.placeNameValue);
            this.Controls.Add(this.placeNameLabel);
            this.Controls.Add(this.placeNumberValue);
            this.Controls.Add(this.prizeNumberLabel);
            this.Controls.Add(this.createTeamButton);
            this.Controls.Add(this.createPrizeLable);
            this.Name = "CreatePrizeForm";
            this.Text = "CreatePrizeForm";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox prizePercentageValue;
        private System.Windows.Forms.Label percentageLabel;
        private System.Windows.Forms.TextBox prizeAmountValue;
        private System.Windows.Forms.Label prizeAmountLabel;
        private System.Windows.Forms.TextBox placeNameValue;
        private System.Windows.Forms.Label placeNameLabel;
        private System.Windows.Forms.TextBox placeNumberValue;
        private System.Windows.Forms.Label prizeNumberLabel;
        private System.Windows.Forms.Button createTeamButton;
        private System.Windows.Forms.Label createPrizeLable;
        private System.Windows.Forms.Label orLabel;
        private System.Windows.Forms.Button creatPrizeButton;
    }
}