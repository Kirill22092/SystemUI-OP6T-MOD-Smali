.class final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlsBindingControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->maybeTerminateAndRun(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$1;

    invoke-direct {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$1;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$1;->INSTANCE:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    return-void
.end method
