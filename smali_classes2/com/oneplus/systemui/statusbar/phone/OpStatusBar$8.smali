.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$8;
.super Ljava/lang/Object;
.source "OpStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnDensityOrFontScaleChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$8;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$8;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$2200(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->inflateOPAodView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$8;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object v1, v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    iget-object v0, v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOPAodWindow:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/OpAodWindowManager;->updateView(Landroid/widget/RelativeLayout;)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$8;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOPAodWindow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onDensityOrFontScaleChanged(Landroid/view/ViewGroup;)V

    return-void
.end method
