.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$RsnC99lStI9aBLStiHw26Ct1bkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

.field public final synthetic f$1:Landroid/view/InsetsState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;Landroid/view/InsetsState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$RsnC99lStI9aBLStiHw26Ct1bkM;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iput-object p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$RsnC99lStI9aBLStiHw26Ct1bkM;->f$1:Landroid/view/InsetsState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$RsnC99lStI9aBLStiHw26Ct1bkM;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$RsnC99lStI9aBLStiHw26Ct1bkM;->f$1:Landroid/view/InsetsState;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$insetsChanged$0$DisplayImeController$PerDisplay(Landroid/view/InsetsState;)V

    return-void
.end method
