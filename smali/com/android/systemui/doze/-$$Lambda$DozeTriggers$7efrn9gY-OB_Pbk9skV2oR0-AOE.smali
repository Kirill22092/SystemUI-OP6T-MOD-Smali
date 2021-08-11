.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-object p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;->f$1:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-object v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;->f$1:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;->f$2:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$requestPulse$3$DozeTriggers(Ljava/lang/Runnable;ILjava/lang/Boolean;)V

    return-void
.end method
