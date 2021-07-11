.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$MultiUserSwitch$xTCgN3mrazovqBP0eNshKQ-KXu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$MultiUserSwitch$xTCgN3mrazovqBP0eNshKQ-KXu4;->f$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$MultiUserSwitch$xTCgN3mrazovqBP0eNshKQ-KXu4;->f$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->lambda$isMultiUserEnabled$0$MultiUserSwitch()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
