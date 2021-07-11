.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-wide p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$1:J

    iput p4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$2:I

    iput-object p5, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-wide v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$1:J

    iget v3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$2:I

    iget-object v4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;->f$3:Ljava/util/function/Consumer;

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/doze/DozeTriggers;->lambda$proximityCheckThenCall$0$DozeTriggers(JILjava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method
