.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;->f$0:Lcom/android/systemui/pip/phone/PipManager;

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;->f$1:Z

    iput p3, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;->f$0:Lcom/android/systemui/pip/phone/PipManager;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;->f$1:Z

    iget p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/pip/phone/PipManager;->lambda$setShelfHeight$1$PipManager(ZI)V

    return-void
.end method
