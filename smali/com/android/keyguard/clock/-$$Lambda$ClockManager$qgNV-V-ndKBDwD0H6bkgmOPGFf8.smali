.class public final synthetic Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qgNV-V-ndKBDwD0H6bkgmOPGFf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qgNV-V-ndKBDwD0H6bkgmOPGFf8;->f$0:Lcom/android/keyguard/clock/ClockManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$qgNV-V-ndKBDwD0H6bkgmOPGFf8;->f$0:Lcom/android/keyguard/clock/ClockManager;

    check-cast p1, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    check-cast p2, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/clock/ClockManager;->lambda$reload$3$ClockManager(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V

    return-void
.end method
