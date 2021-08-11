.class public Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout;
.super Landroid/widget/LinearLayout;
.source "OpExpandButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout$OnConfigurationChangeListener;
    }
.end annotation


# instance fields
.field private mOnConfigurationChangeListener:Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout$OnConfigurationChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout;->mOnConfigurationChangeListener:Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout$OnConfigurationChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout$OnConfigurationChangeListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public setOnConfigurationChangeListener(Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout$OnConfigurationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout;->mOnConfigurationChangeListener:Lcom/oneplus/systemui/statusbar/phone/OpExpandButtonLayout$OnConfigurationChangeListener;

    return-void
.end method
