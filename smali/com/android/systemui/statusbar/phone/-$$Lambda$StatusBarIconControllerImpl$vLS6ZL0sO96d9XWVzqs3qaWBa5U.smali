.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$vLS6ZL0sO96d9XWVzqs3qaWBa5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$vLS6ZL0sO96d9XWVzqs3qaWBa5U;->f$0:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$vLS6ZL0sO96d9XWVzqs3qaWBa5U;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$vLS6ZL0sO96d9XWVzqs3qaWBa5U;->f$0:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$vLS6ZL0sO96d9XWVzqs3qaWBa5U;->f$1:I

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$setIconAccessibilityLiveRegion$2(IILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method
