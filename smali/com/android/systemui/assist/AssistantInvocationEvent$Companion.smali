.class public final Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;
.super Ljava/lang/Object;
.source "AssistantInvocationEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistantInvocationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final deviceStateFromLegacyDeviceState(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_8
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_9
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final eventFromLegacyInvocationType(IZ)Lcom/android/systemui/assist/AssistantInvocationEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    if-eq p1, v0, :cond_4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOME_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_QUICK_SEARCH_BAR:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOTWORD:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_5
    if-eq p1, v0, :cond_7

    if-eq p1, p0, :cond_6

    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    :goto_0
    return-object p0
.end method
