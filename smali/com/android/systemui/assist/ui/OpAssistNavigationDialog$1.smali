.class Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$1;
.super Ljava/lang/Object;
.source "OpAssistNavigationDialog.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->inflateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 163
    :cond_0
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$000()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 164
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$200()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$100()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$000()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :cond_1
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$100()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 167
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$100()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1402

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 168
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$100()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method
