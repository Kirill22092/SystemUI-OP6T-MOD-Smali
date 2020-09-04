.class public Lcom/oneplus/battery/OpBatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "OpBatteryDashChargeView.java"


# instance fields
.field private mDark:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/battery/OpBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    return-void
.end method

.method private getImageResId()I
    .locals 3

    .line 65
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    if-nez v0, :cond_1

    .line 66
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_0

    .line 67
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_0:I

    goto/16 :goto_0

    .line 68
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_0_dark:I

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    if-lez v0, :cond_3

    if-gt v0, v1, :cond_3

    .line 70
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_2

    .line 71
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_1:I

    goto/16 :goto_0

    .line 72
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_1_dark:I

    goto/16 :goto_0

    .line 73
    :cond_3
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x11

    if-le v0, v1, :cond_5

    if-gt v0, v2, :cond_5

    .line 74
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_4

    .line 75
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_2:I

    goto/16 :goto_0

    .line 76
    :cond_4
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_2_dark:I

    goto/16 :goto_0

    .line 77
    :cond_5
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x17

    if-le v0, v2, :cond_7

    if-gt v0, v1, :cond_7

    .line 78
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_6

    .line 79
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_3:I

    goto/16 :goto_0

    .line 80
    :cond_6
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_3_dark:I

    goto/16 :goto_0

    .line 81
    :cond_7
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x1d

    if-le v0, v1, :cond_9

    if-gt v0, v2, :cond_9

    .line 82
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_8

    .line 83
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_4:I

    goto/16 :goto_0

    .line 84
    :cond_8
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_4_dark:I

    goto/16 :goto_0

    .line 85
    :cond_9
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x23

    if-le v0, v2, :cond_b

    if-gt v0, v1, :cond_b

    .line 86
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_a

    .line 87
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_5:I

    goto/16 :goto_0

    .line 88
    :cond_a
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_5_dark:I

    goto/16 :goto_0

    .line 89
    :cond_b
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x29

    if-le v0, v1, :cond_d

    if-gt v0, v2, :cond_d

    .line 90
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_c

    .line 91
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_6:I

    goto/16 :goto_0

    .line 92
    :cond_c
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_6_dark:I

    goto/16 :goto_0

    .line 93
    :cond_d
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x2f

    if-le v0, v2, :cond_f

    if-gt v0, v1, :cond_f

    .line 94
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_e

    .line 95
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_7:I

    goto/16 :goto_0

    .line 96
    :cond_e
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_7_dark:I

    goto/16 :goto_0

    .line 97
    :cond_f
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x35

    if-le v0, v1, :cond_11

    if-gt v0, v2, :cond_11

    .line 98
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_10

    .line 99
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_8:I

    goto/16 :goto_0

    .line 100
    :cond_10
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_8_dark:I

    goto/16 :goto_0

    .line 101
    :cond_11
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x3b

    if-le v0, v2, :cond_13

    if-gt v0, v1, :cond_13

    .line 102
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_12

    .line 103
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_9:I

    goto/16 :goto_0

    .line 104
    :cond_12
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_9_dark:I

    goto/16 :goto_0

    .line 105
    :cond_13
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x41

    if-le v0, v1, :cond_15

    if-gt v0, v2, :cond_15

    .line 106
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_14

    .line 107
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_10:I

    goto/16 :goto_0

    .line 108
    :cond_14
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_10_dark:I

    goto/16 :goto_0

    .line 109
    :cond_15
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x47

    if-le v0, v2, :cond_17

    if-gt v0, v1, :cond_17

    .line 110
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_16

    .line 111
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_11:I

    goto/16 :goto_0

    .line 112
    :cond_16
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_11_dark:I

    goto/16 :goto_0

    .line 113
    :cond_17
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x4d

    if-le v0, v1, :cond_19

    if-gt v0, v2, :cond_19

    .line 114
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_18

    .line 115
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_12:I

    goto :goto_0

    .line 116
    :cond_18
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_12_dark:I

    goto :goto_0

    .line 117
    :cond_19
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x53

    if-le v0, v2, :cond_1b

    if-gt v0, v1, :cond_1b

    .line 118
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_1a

    .line 119
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_13:I

    goto :goto_0

    .line 120
    :cond_1a
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_13_dark:I

    goto :goto_0

    .line 121
    :cond_1b
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x59

    if-le v0, v1, :cond_1d

    if-gt v0, v2, :cond_1d

    .line 122
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_1c

    .line 123
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_14:I

    goto :goto_0

    .line 124
    :cond_1c
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_14_dark:I

    goto :goto_0

    .line 125
    :cond_1d
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x5f

    if-le v0, v2, :cond_1f

    if-gt v0, v1, :cond_1f

    .line 126
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_1e

    .line 127
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_15:I

    goto :goto_0

    .line 128
    :cond_1e
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_15_dark:I

    goto :goto_0

    .line 129
    :cond_1f
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    if-le v0, v1, :cond_21

    const/16 v1, 0x64

    if-gt v0, v1, :cond_21

    .line 130
    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_20

    .line 131
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_16:I

    goto :goto_0

    .line 132
    :cond_20
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_16_dark:I

    goto :goto_0

    :cond_21
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public setIconTint(I)V
    .locals 0

    .line 45
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLevel(IZ)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 57
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    .line 58
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryDashChargeView;->getImageResId()I

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public updateDisplayAndTextSize()V
    .locals 2

    .line 51
    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/battery/OpBatteryDashChargeView;->setLevel(IZ)V

    return-void
.end method
