.class final Lcom/android/systemui/controls/ui/DetailDialog$4;
.super Ljava/lang/Object;
.source "DetailDialog.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetailDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetailDialog.kt\ncom/android/systemui/controls/ui/DetailDialog$4\n*L\n1#1,155:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->getActivityView()Landroid/app/ActivityView;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/app/ActivityView;->getPaddingLeft()I

    move-result p1

    .line 112
    invoke-virtual {p0}, Landroid/app/ActivityView;->getPaddingTop()I

    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/app/ActivityView;->getPaddingRight()I

    move-result v1

    .line 114
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ActivityView;->setPadding(IIII)V

    .line 117
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method
