.class public Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/Events$Callback;,
        Lcom/android/systemui/volume/Events$ZenModeEvent;,
        Lcom/android/systemui/volume/Events$VolumeDialogEvent;,
        Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;,
        Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;
    }
.end annotation


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sCallback:Lcom/android/systemui/volume/Events$Callback;

.field static sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 38
    const-class v0, Lcom/android/systemui/volume/Events;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show_dialog"

    const-string v2, "dismiss_dialog"

    const-string v3, "active_stream_changed"

    const-string v4, "expand"

    const-string v5, "key"

    const-string v6, "collection_started"

    const-string v7, "collection_stopped"

    const-string v8, "icon_click"

    const-string/jumbo v9, "settings_click"

    const-string/jumbo v10, "touch_level_changed"

    const-string v11, "level_changed"

    const-string v12, "internal_ringer_mode_changed"

    const-string v13, "external_ringer_mode_changed"

    const-string/jumbo v14, "zen_mode_changed"

    const-string/jumbo v15, "suppressor_changed"

    const-string v16, "mute_changed"

    const-string/jumbo v17, "touch_level_done"

    const-string/jumbo v18, "zen_mode_config_changed"

    const-string v19, "ringer_toggle"

    const-string/jumbo v20, "show_usb_overheat_alarm"

    const-string v21, "dismiss_usb_overheat_alarm"

    const-string v22, "odi_captions_click"

    const-string v23, "odi_captions_tooltip_click"

    const-string/jumbo v24, "status_bar_icon_changed"

    .line 66
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    const-string/jumbo v2, "touch_outside"

    const-string/jumbo v3, "volume_controller"

    const-string/jumbo v4, "timeout"

    const-string v5, "screen_off"

    const-string/jumbo v6, "settings_clicked"

    const-string v7, "done_clicked"

    const-string v8, "a11y_stream_changed"

    const-string v9, "output_chooser"

    const-string/jumbo v10, "usb_temperature_below_threshold"

    const-string/jumbo v11, "still_showing_after_dismissed"

    .line 108
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "volume_changed"

    const-string v2, "remote_volume_changed"

    const-string/jumbo v3, "usb_temperature_above_threshold"

    const-string v4, "output_chooser_back"

    .line 131
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    .line 342
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 344
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iconStateToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "vibrate"

    return-object p0

    :cond_1
    const-string p0, "mute"

    return-object p0

    :cond_2
    const-string/jumbo p0, "unmute"

    return-object p0
.end method

.method public static varargs logEvent(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 368
    sget-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 373
    array-length v1, p1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, " "

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b1

    const/16 v2, 0xcf

    const-string v3, " keyguard="

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p0, :pswitch_data_0

    .line 504
    :pswitch_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 500
    :pswitch_1
    aget-object p0, p1, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 488
    :pswitch_2
    sget-object p0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 489
    sget-object p0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {p0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 490
    array-length p0, p1

    if-le p0, v6, :cond_4

    .line 491
    aget-object p0, p1, v6

    check-cast p0, Ljava/lang/Boolean;

    .line 492
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "dismiss_usb_overheat_alarm"

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 493
    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/Integer;

    .line 494
    sget-object v1, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 478
    :pswitch_3
    sget-object p0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 479
    sget-object p0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {p0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 480
    array-length p0, p1

    if-le p0, v6, :cond_4

    .line 481
    aget-object p0, p1, v6

    check-cast p0, Ljava/lang/Boolean;

    .line 482
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v4, "show_usb_overheat_alarm"

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 483
    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/Integer;

    .line 484
    sget-object v1, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 450
    :pswitch_4
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 451
    sget-object p1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x569

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 452
    sget-object p1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->fromRingerMode(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 453
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 426
    :pswitch_5
    array-length p0, p1

    if-le p0, v6, :cond_2

    .line 427
    aget-object p0, p1, v6

    check-cast p0, Ljava/lang/Integer;

    .line 428
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0xd1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 429
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->fromSliderLevel(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    .line 473
    :pswitch_6
    array-length p0, p1

    if-le p0, v6, :cond_4

    .line 474
    aget-object p0, p1, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p1, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 467
    :pswitch_7
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 468
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/volume/Events;->zenModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    sget-object p1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events$ZenModeEvent;->fromZenMode(I)Lcom/android/systemui/volume/Events$ZenModeEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto/16 :goto_2

    .line 457
    :pswitch_8
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 458
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0xd5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 462
    :pswitch_9
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 463
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 435
    :cond_2
    :goto_0
    :pswitch_a
    array-length p0, p1

    if-le p0, v6, :cond_4

    .line 436
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p1, v6

    .line 437
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 416
    :pswitch_b
    array-length p0, p1

    if-le p0, v6, :cond_4

    .line 417
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 418
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0xd4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 419
    aget-object p1, p1, v6

    check-cast p1, Ljava/lang/Integer;

    .line 420
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->fromIconState(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 421
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/volume/Events;->iconStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 441
    :pswitch_c
    array-length p0, p1

    if-le p0, v6, :cond_4

    .line 442
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 443
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0xd3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 444
    aget-object p1, p1, v6

    check-cast p1, Ljava/lang/Integer;

    .line 445
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->fromKeyLevel(I)Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 446
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 394
    :pswitch_d
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Boolean;

    .line 395
    sget-object p1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xd0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 396
    sget-object p1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    goto :goto_1

    .line 397
    :cond_3
    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 396
    :goto_1
    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 398
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 409
    :pswitch_e
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 410
    sget-object p1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xd2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 411
    sget-object p1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 412
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 402
    :pswitch_f
    sget-object p0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 403
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 404
    sget-object p1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->fromReason(I)Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 405
    sget-object p1, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 384
    :pswitch_10
    sget-object p0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 385
    array-length p0, p1

    if-le p0, v6, :cond_4

    .line 386
    aget-object p0, p1, v5

    check-cast p0, Ljava/lang/Integer;

    .line 387
    aget-object p1, p1, v6

    check-cast p1, Ljava/lang/Boolean;

    .line 388
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v4, "volume_from_keyguard"

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 389
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->fromReasons(I)Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 390
    sget-object v1, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/16 p1, 0x8

    if-ne p0, p1, :cond_6

    .line 375
    sget-object p0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p1, 0x56a

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 376
    sget-object p0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 378
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "normal"

    return-object p0

    :cond_1
    const-string/jumbo p0, "vibrate"

    return-object p0

    :cond_2
    const-string/jumbo p0, "silent"

    return-object p0
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)V
    .locals 4

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 353
    sget-object v2, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/Events;->logEvent(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v2, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v2, :cond_0

    .line 355
    invoke-interface {v2, v0, v1, p0, p1}, Lcom/android/systemui/volume/Events$Callback;->writeEvent(JI[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1

    .line 511
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_0
    return-void
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "alarms"

    return-object p0

    :cond_1
    const-string p0, "no_interruptions"

    return-object p0

    :cond_2
    const-string p0, "important_interruptions"

    return-object p0

    :cond_3
    const-string p0, "off"

    return-object p0
.end method
