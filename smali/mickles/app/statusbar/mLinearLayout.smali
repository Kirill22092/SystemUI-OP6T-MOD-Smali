.class public Lmickles/app/statusbar/mLinearLayout;
.super Landroid/widget/LinearLayout;
.source "mLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmickles/app/statusbar/mLinearLayout$MyContentObserver;
    }
.end annotation


# instance fields
.field PaddingKey:Ljava/lang/String;

.field VisiblyKey:Ljava/lang/String;

.field VisiblyValue:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mParamAttributeSet:Landroid/util/AttributeSet;

.field myObserver:Lmickles/app/statusbar/mLinearLayout$MyContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyValue:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lmickles/app/statusbar/mLinearLayout;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lmickles/app/statusbar/mLinearLayout;->mParamAttributeSet:Landroid/util/AttributeSet;

    .line 28
    new-instance v0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;-><init>(Lmickles/app/statusbar/mLinearLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->myObserver:Lmickles/app/statusbar/mLinearLayout$MyContentObserver;

    .line 30
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->mParamAttributeSet:Landroid/util/AttributeSet;

    if-eqz v0, :cond_5

    .line 31
    const-string v0, "VisiblyKey"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    .line 35
    :cond_1
    const-string v0, "VisiblyValue"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyValue:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 37
    :cond_2
    const-string v0, "1"

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyValue:Ljava/lang/String;

    .line 39
    :cond_3
    const-string v0, "PaddingKey"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 41
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    .line 45
    :cond_5
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 47
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmickles/app/statusbar/mLinearLayout;->myObserver:Lmickles/app/statusbar/mLinearLayout$MyContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    invoke-virtual {p0}, Lmickles/app/statusbar/mLinearLayout;->setVis()V

    .line 52
    :cond_6
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 53
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmickles/app/statusbar/mLinearLayout;->myObserver:Lmickles/app/statusbar/mLinearLayout$MyContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v3, v0, v3, v3}, Lmickles/app/statusbar/mLinearLayout;->setPadding(IIII)V

    .line 58
    :cond_7
    return-void
.end method


# virtual methods
.method setVis()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmickles/app/statusbar/mLinearLayout;->VisiblyValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmickles/app/statusbar/mLinearLayout;->setVisibility(I)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmickles/app/statusbar/mLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
