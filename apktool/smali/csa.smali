.class public final Lcsa;
.super Lgfj;
.source "SourceFile"

# interfaces
.implements Lcrs;


# instance fields
.field public a:Lfet;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->a()Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgfj;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 40
    const/4 v0, 0x1

    const/high16 v1, 0x43c80000    # 400.0f

    .line 42
    invoke-virtual {p0}, Lcsa;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 41
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcsa;->c:I

    .line 43
    return-void
.end method

.method private a(II)I
    .locals 1

    .prologue
    .line 71
    sparse-switch p2, :sswitch_data_0

    .line 83
    iget p1, p0, Lcsa;->c:I

    :goto_0
    :sswitch_0
    return p1

    .line 79
    :sswitch_1
    iget v0, p0, Lcsa;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lav;Ljava/lang/String;Ljava/lang/String;DDLfet;)V
    .locals 12

    .prologue
    .line 90
    move-object/from16 v0, p8

    iput-object v0, p0, Lcsa;->a:Lfet;

    .line 1000
    iget-object v2, p0, Lgfj;->b:Lfxs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lfxs;->a(Landroid/os/Bundle;)V

    iget-object v2, p0, Lgfj;->b:Lfxs;

    invoke-virtual {v2}, Lfxs;->a()Lfxr;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2000
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lfhr;->a(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2}, Lfhr;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Laal;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v5, :cond_0

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lfxu;

    invoke-direct {v5, v2, v3}, Lfxu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3000
    :cond_0
    iget-object v2, p0, Lgfj;->b:Lfxs;

    invoke-virtual {v2}, Lfxs;->b()V

    .line 96
    new-instance v2, Lgfm;

    move-object v3, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object v8, p2

    move-object v9, p3

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lgfm;-><init>(Lcsa;DDLjava/lang/String;Ljava/lang/String;Lav;)V

    invoke-virtual {p0, v2}, Lcsa;->a(Lgfm;)V

    .line 104
    invoke-virtual {p0}, Lcsa;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 105
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    sget v3, Laal;->nF:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    .line 108
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    :goto_0
    invoke-virtual {p0, v2}, Lcsa;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcsa;->setLongClickable(Z)V

    .line 122
    return-void

    .line 111
    :cond_1
    sget v3, Laal;->nD:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    :cond_2
    sget v3, Laal;->nE:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public a(Lgfh;DDLjava/lang/String;Ljava/lang/String;Lav;)V
    .locals 12

    .prologue
    .line 159
    invoke-virtual {p0}, Lcsa;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_0

    .line 161
    invoke-static {v2}, Lgfl;->a(Landroid/content/Context;)I

    .line 165
    :cond_0
    new-instance v3, Lgfi;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lgfi;-><init>(Lcsa;Ljava/lang/String;DDLav;)V

    .line 6000
    :try_start_0
    iget-object v2, p1, Lgfh;->a:Lgfq;

    new-instance v4, Lghn;

    invoke-direct {v4, p1, v3}, Lghn;-><init>(Lgfh;Lgfi;)V

    invoke-interface {v2, v4}, Lgfq;->a(Lghm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v0, p4

    invoke-direct {v2, p2, p3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 182
    invoke-static {v2}, Laal;->a(Lcom/google/android/gms/maps/model/LatLng;)Lgfg;

    move-result-object v3

    .line 7000
    :try_start_1
    iget-object v4, p1, Lgfh;->a:Lgfq;

    invoke-virtual {v3}, Lgfg;->a()Lfxx;

    move-result-object v3

    invoke-interface {v4, v3}, Lgfq;->a(Lfxx;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 186
    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 185
    invoke-virtual {p1, v2}, Lgfh;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lgjh;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lgjh;->a()V

    .line 188
    return-void

    .line 6000
    :catch_0
    move-exception v2

    new-instance v3, Lax;

    invoke-direct {v3, v2}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v3

    .line 7000
    :catch_1
    move-exception v2

    new-instance v3, Lax;

    invoke-direct {v3, v2}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v3
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 4000
    iget-object v0, p0, Lgfj;->b:Lfxs;

    invoke-virtual {v0}, Lfxs;->c()V

    .line 5000
    iget-object v0, p0, Lgfj;->b:Lfxs;

    invoke-virtual {v0}, Lfxs;->d()V

    .line 137
    return-void
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public c_()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcsa;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 54
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 58
    invoke-direct {p0, v0, v2}, Lcsa;->a(II)I

    move-result v0

    .line 59
    invoke-direct {p0, v1, v3}, Lcsa;->a(II)I

    move-result v1

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 66
    invoke-super {p0, v0, v0}, Lgfj;->onMeasure(II)V

    .line 67
    return-void
.end method
