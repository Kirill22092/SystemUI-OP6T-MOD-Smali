.class public Lcom/android/systemui/dock/DockManagerImpl;
.super Ljava/lang/Object;
.source "DockManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAlignmentStateListener(Lcom/android/systemui/dock/DockManager$AlignmentStateListener;)V
    .locals 0

    return-void
.end method

.method public addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    return-void
.end method

.method public isDocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    return-void
.end method
