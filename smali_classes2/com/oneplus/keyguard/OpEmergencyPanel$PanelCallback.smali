.class public Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;
.super Ljava/lang/Object;
.source "OpEmergencyPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpEmergencyPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanelCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBubbleTouched()V
.end method

.method public abstract onDrop()V
.end method

.method public onTimeout()V
    .locals 0

    return-void
.end method
