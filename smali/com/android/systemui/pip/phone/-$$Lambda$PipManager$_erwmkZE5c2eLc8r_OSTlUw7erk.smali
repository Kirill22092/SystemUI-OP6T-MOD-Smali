.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$_erwmkZE5c2eLc8r_OSTlUw7erk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$_erwmkZE5c2eLc8r_OSTlUw7erk;->f$0:Lcom/android/systemui/pip/phone/PipManager;

    iput p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$_erwmkZE5c2eLc8r_OSTlUw7erk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$_erwmkZE5c2eLc8r_OSTlUw7erk;->f$0:Lcom/android/systemui/pip/phone/PipManager;

    iget p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$_erwmkZE5c2eLc8r_OSTlUw7erk;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/phone/PipManager;->lambda$setPinnedStackAnimationType$2$PipManager(I)V

    return-void
.end method
