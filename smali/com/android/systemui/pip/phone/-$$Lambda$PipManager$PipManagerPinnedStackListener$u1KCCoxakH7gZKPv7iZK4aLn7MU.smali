.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;->f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;->f$1:Z

    iput p3, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;->f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;->f$1:Z

    iget p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onImeVisibilityChanged$1$PipManager$PipManagerPinnedStackListener(ZI)V

    return-void
.end method
