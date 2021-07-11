.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$VKegz7htjpQCkeKeoZ-Wkho3eGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

.field public final synthetic f$1:Landroid/view/InsetsSourceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;Landroid/view/InsetsSourceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$VKegz7htjpQCkeKeoZ-Wkho3eGY;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iput-object p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$VKegz7htjpQCkeKeoZ-Wkho3eGY;->f$1:Landroid/view/InsetsSourceControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$VKegz7htjpQCkeKeoZ-Wkho3eGY;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$VKegz7htjpQCkeKeoZ-Wkho3eGY;->f$1:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$insetsControlChanged$1$DisplayImeController$PerDisplay(Landroid/view/InsetsSourceControl;)V

    return-void
.end method
