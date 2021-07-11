.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$L6GammKdHWnk5GdqkgMLveN3ScI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$L6GammKdHWnk5GdqkgMLveN3ScI;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$L6GammKdHWnk5GdqkgMLveN3ScI;->f$0:I

    check-cast p1, Ldagger/Lazy;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startScreenPinning$0(ILdagger/Lazy;)V

    return-void
.end method
