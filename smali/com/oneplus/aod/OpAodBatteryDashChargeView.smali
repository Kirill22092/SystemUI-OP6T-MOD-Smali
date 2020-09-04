.class public Lcom/oneplus/aod/OpAodBatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "OpAodBatteryDashChargeView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDark:Z

.field private mIconTint:I

.field private mLevel:I

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpAodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    .line 30
    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    .line 32
    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mIconTint:I

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    .line 51
    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getImageResId()I
    .locals 3

    .line 99
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    if-nez v0, :cond_1

    .line 100
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_0

    .line 101
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_0:I

    goto/16 :goto_0

    .line 102
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_0_dark:I

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    if-lez v0, :cond_3

    if-gt v0, v1, :cond_3

    .line 104
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_2

    .line 105
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_1:I

    goto/16 :goto_0

    .line 106
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_1_dark:I

    goto/16 :goto_0

    .line 107
    :cond_3
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x11

    if-le v0, v1, :cond_5

    if-gt v0, v2, :cond_5

    .line 108
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_4

    .line 109
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_2:I

    goto/16 :goto_0

    .line 110
    :cond_4
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_2_dark:I

    goto/16 :goto_0

    .line 111
    :cond_5
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x17

    if-le v0, v2, :cond_7

    if-gt v0, v1, :cond_7

    .line 112
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_6

    .line 113
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_3:I

    goto/16 :goto_0

    .line 114
    :cond_6
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_3_dark:I

    goto/16 :goto_0

    .line 115
    :cond_7
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x1d

    if-le v0, v1, :cond_9

    if-gt v0, v2, :cond_9

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_8

    .line 117
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_4:I

    goto/16 :goto_0

    .line 118
    :cond_8
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_4_dark:I

    goto/16 :goto_0

    .line 119
    :cond_9
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x23

    if-le v0, v2, :cond_b

    if-gt v0, v1, :cond_b

    .line 120
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_a

    .line 121
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_5:I

    goto/16 :goto_0

    .line 122
    :cond_a
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_5_dark:I

    goto/16 :goto_0

    .line 123
    :cond_b
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x29

    if-le v0, v1, :cond_d

    if-gt v0, v2, :cond_d

    .line 124
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_c

    .line 125
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_6:I

    goto/16 :goto_0

    .line 126
    :cond_c
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_6_dark:I

    goto/16 :goto_0

    .line 127
    :cond_d
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x2f

    if-le v0, v2, :cond_f

    if-gt v0, v1, :cond_f

    .line 128
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_e

    .line 129
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_7:I

    goto/16 :goto_0

    .line 130
    :cond_e
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_7_dark:I

    goto/16 :goto_0

    .line 131
    :cond_f
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x35

    if-le v0, v1, :cond_11

    if-gt v0, v2, :cond_11

    .line 132
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_10

    .line 133
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_8:I

    goto/16 :goto_0

    .line 134
    :cond_10
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_8_dark:I

    goto/16 :goto_0

    .line 135
    :cond_11
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x3b

    if-le v0, v2, :cond_13

    if-gt v0, v1, :cond_13

    .line 136
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_12

    .line 137
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_9:I

    goto/16 :goto_0

    .line 138
    :cond_12
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_9_dark:I

    goto/16 :goto_0

    .line 139
    :cond_13
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x41

    if-le v0, v1, :cond_15

    if-gt v0, v2, :cond_15

    .line 140
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_14

    .line 141
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_10:I

    goto/16 :goto_0

    .line 142
    :cond_14
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_10_dark:I

    goto/16 :goto_0

    .line 143
    :cond_15
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x47

    if-le v0, v2, :cond_17

    if-gt v0, v1, :cond_17

    .line 144
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_16

    .line 145
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_11:I

    goto/16 :goto_0

    .line 146
    :cond_16
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_11_dark:I

    goto/16 :goto_0

    .line 147
    :cond_17
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x4d

    if-le v0, v1, :cond_19

    if-gt v0, v2, :cond_19

    .line 148
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_18

    .line 149
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_12:I

    goto :goto_0

    .line 150
    :cond_18
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_12_dark:I

    goto :goto_0

    .line 151
    :cond_19
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x53

    if-le v0, v2, :cond_1b

    if-gt v0, v1, :cond_1b

    .line 152
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_1a

    .line 153
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_13:I

    goto :goto_0

    .line 154
    :cond_1a
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_13_dark:I

    goto :goto_0

    .line 155
    :cond_1b
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x59

    if-le v0, v1, :cond_1d

    if-gt v0, v2, :cond_1d

    .line 156
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_1c

    .line 157
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_14:I

    goto :goto_0

    .line 158
    :cond_1c
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_14_dark:I

    goto :goto_0

    .line 159
    :cond_1d
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    const/16 v1, 0x5f

    if-le v0, v2, :cond_1f

    if-gt v0, v1, :cond_1f

    .line 160
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_1e

    .line 161
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_15:I

    goto :goto_0

    .line 162
    :cond_1e
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_15_dark:I

    goto :goto_0

    .line 163
    :cond_1f
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    if-le v0, v1, :cond_21

    const/16 v1, 0x64

    if-gt v0, v1, :cond_21

    .line 164
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mDark:Z

    if-nez p0, :cond_20

    .line 165
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_16:I

    goto :goto_0

    .line 166
    :cond_20
    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_16_dark:I

    goto :goto_0

    :cond_21
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 68
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->battery_dash_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 73
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->battery_dash_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLevel(IZ)V
    .locals 1

    .line 90
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 91
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->mLevel:I

    .line 92
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->getImageResId()I

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
