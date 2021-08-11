.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;ZZFFIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-boolean p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$2:Z

    iput p4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$3:F

    iput p5, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$4:F

    iput p6, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$5:I

    iput-boolean p7, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$6:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-boolean v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$2:Z

    iget v3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$3:F

    iget v4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$4:F

    iget v5, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$5:I

    iget-boolean v6, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;->f$6:Z

    move-object v7, p1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onSensor$1$DozeTriggers(ZZFFIZLjava/lang/Boolean;)V

    return-void
.end method
