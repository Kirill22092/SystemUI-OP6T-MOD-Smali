.class public Lcom/oneplus/lib/widget/OPSeekBar;
.super Lcom/oneplus/lib/widget/OPAbsSeekBar;
.source "OPSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 84
    sget v0, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Widget_Material_SeekBar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 88
    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 130
    const-class p0, Lcom/oneplus/lib/widget/OPSeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method onProgressRefresh(FZI)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onProgressRefresh(FZI)V

    .line 95
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1, p0, p3, p2}, Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/oneplus/lib/widget/OPSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    return-void
.end method
