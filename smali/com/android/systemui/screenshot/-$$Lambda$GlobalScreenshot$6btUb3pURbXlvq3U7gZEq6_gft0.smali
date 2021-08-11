.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6btUb3pURbXlvq3U7gZEq6_gft0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6btUb3pURbXlvq3U7gZEq6_gft0;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6btUb3pURbXlvq3U7gZEq6_gft0;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$1$GlobalScreenshot(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
