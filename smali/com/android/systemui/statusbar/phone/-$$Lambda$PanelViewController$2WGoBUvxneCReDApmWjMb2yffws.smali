.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$startUnlockHintAnimationPhase1$2$PanelViewController(Landroid/view/View;)V

    return-void
.end method
