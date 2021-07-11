.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "ISystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 198
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "com.android.systemui.shared.recents.ISystemUiProxy"

    if-eq p1, v0, :cond_11

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 522
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 477
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getFullScreenNavBarInset(Ljava/lang/String;)I

    move-result p0

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 470
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyLeaveOneHandMode()V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 461
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 464
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyGestureEnded(I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 454
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyGestureStarted()V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 487
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 490
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 496
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 497
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    move-object p4, v3

    .line 503
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 510
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    sget-object v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 516
    :cond_3
    invoke-interface {p0, p1, p4, v0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 445
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 448
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onQuickSwitchToNewTask(I)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 436
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    move-result-object p1

    .line 439
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setPinnedStackAnimationListener(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 429
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToHomeFinished()V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 420
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 423
    :cond_4
    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setSplitScreenMinimized(Z)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 390
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 393
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_5
    move-object p1, v3

    .line 399
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 400
    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    goto :goto_4

    :cond_6
    move-object p4, v3

    .line 406
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 407
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Insets;

    .line 413
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 414
    invoke-interface {p0, p1, p4, v3, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 379
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v0, v1

    .line 383
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 384
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setShelfHeight(ZI)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 281
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    move v0, v1

    .line 286
    :cond_9
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setNavBarButtonAlpha(FZ)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 315
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 318
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion(F)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 372
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 365
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 356
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 359
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 338
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 343
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_a

    .line 346
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 350
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 324
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 327
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 332
    :cond_b
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 306
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 309
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 292
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 295
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    .line 300
    :cond_c
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 270
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d

    move v0, v1

    .line 275
    :cond_d
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setBackButtonAlpha(FZ)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 256
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_e

    .line 260
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {p0, p3, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 264
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 247
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    move v0, v1

    .line 250
    :cond_f
    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onOverviewShown(Z)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 240
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 226
    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 231
    :cond_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 234
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
