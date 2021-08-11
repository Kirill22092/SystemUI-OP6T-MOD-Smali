.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$HZx5UzHarvs5L6-DXQmh-vvZFRQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$HZx5UzHarvs5L6-DXQmh-vvZFRQ;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-object p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$HZx5UzHarvs5L6-DXQmh-vvZFRQ;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$HZx5UzHarvs5L6-DXQmh-vvZFRQ;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$HZx5UzHarvs5L6-DXQmh-vvZFRQ;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onWakeScreen$2$DozeTriggers(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/Boolean;)V

    return-void
.end method
