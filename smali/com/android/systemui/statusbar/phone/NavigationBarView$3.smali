.class Lcom/android/systemui/statusbar/phone/NavigationBarView$3;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .line 1857
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 1866
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 1867
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public isSamplingEnabled()Z
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public onRegionDarknessChanged(Z)V
    .locals 1

    .line 1860
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    return-void
.end method
