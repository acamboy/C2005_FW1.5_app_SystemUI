.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 51
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 52
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinAlpha:F

    .line 81
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 83
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 84
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 85
    iput p3, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 86
    iput p4, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 88
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateAlphaFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 117
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 119
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 117
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000

    .line 145
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 146
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000

    mul-float v0, v4, v3

    .line 147
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000

    .line 148
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 149
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 150
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 154
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 151
    :cond_1
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 152
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 175
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 183
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 185
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 186
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 128
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateAlphaFromOffset(Landroid/view/View;Z)V
    .locals 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 158
    if-eqz p2, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    .line 160
    .local v0, "alpha":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 165
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 167
    .end local v0    # "alpha":F
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 168
    return-void

    .line 163
    .restart local v0    # "alpha":F
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v7, 0x0

    .line 273
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "animView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 277
    .local v2, "canAnimViewBeDismissed":Z
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_1

    cmpl-float v5, p2, v7

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_1

    :cond_0
    cmpl-float v5, p2, v7

    if-nez v5, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 281
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    .line 285
    .local v4, "newPos":F
    :goto_0
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 286
    .local v3, "duration":I
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_3

    .line 287
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 294
    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 295
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 296
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 298
    new-instance v5, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    new-instance v5, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 309
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 310
    return-void

    .line 283
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "duration":I
    .end local v4    # "newPos":F
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .restart local v4    # "newPos":F
    goto :goto_0

    .line 291
    .restart local v3    # "duration":I
    :cond_3
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    return v3

    .line 211
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 213
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 214
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 215
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 217
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 218
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 221
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v3, :cond_1

    .line 223
    new-instance v3, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;)V

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 244
    .local v2, "pos":F
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 245
    .local v1, "delta":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 247
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 258
    .end local v1    # "delta":F
    .end local v2    # "pos":F
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 259
    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 260
    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 261
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v13, :cond_0

    .line 333
    const/4 v13, 0x1

    .line 396
    :goto_0
    return v13

    .line 336
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v13, :cond_1

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 340
    const/4 v13, 0x0

    goto :goto_0

    .line 343
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 345
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 396
    :cond_2
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 348
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v13, :cond_2

    .line 349
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v5, v13, v14

    .line 352
    .local v5, "delta":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v11

    .line 354
    .local v11, "size":F
    const v13, 0x3e19999a

    mul-float v8, v13, v11

    .line 355
    .local v8, "maxScrollDistance":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v11

    if-ltz v13, :cond_5

    .line 356
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-lez v13, :cond_4

    move v5, v8

    .line 361
    .end local v8    # "maxScrollDistance":F
    .end local v11    # "size":F
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/systemui/SwipeHelper;->updateAlphaFromOffset(Landroid/view/View;Z)V

    goto :goto_1

    .line 356
    .restart local v8    # "maxScrollDistance":F
    .restart local v11    # "size":F
    :cond_4
    neg-float v5, v8

    goto :goto_2

    .line 358
    :cond_5
    div-float v13, v5, v11

    float-to-double v13, v13

    const-wide v15, 0x3ff921fb54442d18L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v5, v8, v13

    goto :goto_2

    .line 368
    .end local v5    # "delta":F
    .end local v8    # "maxScrollDistance":F
    .end local v11    # "size":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v13, :cond_2

    .line 369
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v9, v13, v14

    .line 370
    .local v9, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 371
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v7, v13, v14

    .line 372
    .local v7, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v12

    .line 373
    .local v12, "velocity":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v10

    .line 376
    .local v10, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3fd999999999999aL

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_7

    const/4 v3, 0x1

    .line 378
    .local v3, "childSwipedFarEnough":Z
    :goto_3
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v7

    if-lez v13, :cond_a

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_8

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    const/4 v14, 0x1

    :goto_5
    if-ne v13, v14, :cond_a

    const/4 v4, 0x1

    .line 382
    .local v4, "childSwipedFastEnough":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-nez v4, :cond_6

    if-eqz v3, :cond_b

    :cond_6
    const/4 v6, 0x1

    .line 385
    .local v6, "dismissChild":Z
    :goto_7
    if-eqz v6, :cond_d

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v4, :cond_c

    .end local v12    # "velocity":F
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 376
    .end local v3    # "childSwipedFarEnough":Z
    .end local v4    # "childSwipedFastEnough":Z
    .end local v6    # "dismissChild":Z
    .restart local v12    # "velocity":F
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 378
    .restart local v3    # "childSwipedFarEnough":Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    .line 382
    .restart local v4    # "childSwipedFastEnough":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 387
    .restart local v6    # "dismissChild":Z
    :cond_c
    const/4 v12, 0x0

    goto :goto_8

    .line 390
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 204
    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 96
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 97
    return-void
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    .line 93
    return-void
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMinAlpha:F

    .line 142
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 101
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 313
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 315
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 316
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 317
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    new-instance v4, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 329
    return-void
.end method
