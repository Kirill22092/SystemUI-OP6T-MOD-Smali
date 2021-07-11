.class Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$2;
.super Ljava/lang/Object;
.source "OpAssistNavigationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 192
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$308()I

    .line 193
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$300()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_0

    .line 194
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$300()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->access$400(I)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->dismissDialog()V

    :goto_0
    return-void
.end method
