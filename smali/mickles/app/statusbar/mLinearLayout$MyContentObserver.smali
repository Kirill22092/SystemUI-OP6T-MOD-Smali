.class Lmickles/app/statusbar/mLinearLayout$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "mLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/statusbar/mLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/statusbar/mLinearLayout;


# direct methods
.method public constructor <init>(Lmickles/app/statusbar/mLinearLayout;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmickles/app/statusbar/mLinearLayout;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 61
    iput-object p1, p0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->this$0:Lmickles/app/statusbar/mLinearLayout;

    .line 62
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 68
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->this$0:Lmickles/app/statusbar/mLinearLayout;

    iget-object v0, v0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->this$0:Lmickles/app/statusbar/mLinearLayout;

    iget-object v0, v0, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->this$0:Lmickles/app/statusbar/mLinearLayout;

    iget-object v1, p0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->this$0:Lmickles/app/statusbar/mLinearLayout;

    iget-object v1, v1, Lmickles/app/statusbar/mLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->this$0:Lmickles/app/statusbar/mLinearLayout;

    iget-object v2, v2, Lmickles/app/statusbar/mLinearLayout;->PaddingKey:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Lmickles/app/statusbar/mLinearLayout;->setPadding(IIII)V

    .line 75
    :cond_0
    iget-object v0, p0, Lmickles/app/statusbar/mLinearLayout$MyContentObserver;->this$0:Lmickles/app/statusbar/mLinearLayout;

    invoke-virtual {v0}, Lmickles/app/statusbar/mLinearLayout;->setVis()V

    .line 76
    return-void
.end method
