.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$gJeQLk7uUPWe8l2LAzLToqB-eJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$gJeQLk7uUPWe8l2LAzLToqB-eJo;->f$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$gJeQLk7uUPWe8l2LAzLToqB-eJo;->f$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->lambda$useFullscreenUserSwitcher$0$UserSwitcherController()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
