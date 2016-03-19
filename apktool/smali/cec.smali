.class public Lcec;
.super Limg;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcdw;
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Limg;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcdw;",
        "Lck",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lgw;


# instance fields
.field private aj:Ljava/lang/String;

.field private ak:Lhpu;

.field private al:Z

.field private am:Z

.field private an:Lazl;

.field private b:Lced;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Lcdv;

.field private h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

.field private i:Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lgw;->a()Lgw;

    move-result-object v0

    sput-object v0, Lcec;->a:Lgw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Limg;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcec;->aj:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 256
    iget-object v1, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    iget-object v3, p0, Lcec;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcec;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcec;->b:Lced;

    .line 354
    invoke-virtual {p0}, Lcec;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcec;->aj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 353
    :cond_1
    invoke-interface {v0, v2}, Lced;->b(Z)V

    .line 355
    return-void

    :cond_2
    move v0, v2

    .line 352
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 331
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/16 v3, 0x51

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 3309
    :pswitch_0
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 3310
    if-lez v0, :cond_0

    .line 3311
    iget-object v1, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 3312
    iget-object v1, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 247
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcec;->a(IZ)V

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcec;->a(IZ)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 233
    invoke-virtual {p0}, Lcec;->getActivity()Lba;

    move-result-object v0

    sget v1, Laen;->gm:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iput-object v0, p0, Lcec;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 234
    iget-object v0, p0, Lcec;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcec;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcec;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->b()V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcec;->e()V

    .line 239
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 407
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcec;->aj:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcec;->f()V

    .line 410
    :cond_0
    return-void
.end method

.method public a(Lced;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcec;->b:Lced;

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 327
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcec;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcec;->i:Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcec;->ak:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcec;->i:Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;->a(Ljava/lang/String;Lbfd;)V

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcec;->b:Lced;

    invoke-interface {v1, v0}, Lced;->a(Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-direct {p0}, Lcec;->f()V

    .line 114
    return-void

    .line 110
    :cond_2
    iget-object v1, p0, Lcec;->b:Lced;

    sget-object v2, Lcec;->a:Lgw;

    sget-object v3, Lhh;->a:Lhg;

    invoke-virtual {v2, v0, v3}, Lgw;->a(Ljava/lang/String;Lhg;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lced;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcec;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3343
    const-string v0, ""

    iget-object v1, p0, Lcec;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcec;->aj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcec;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 3347
    :cond_0
    const-string v0, "Babel_dialer"

    const-string v1, "Dialer button enabled without a last-dialed number"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcec;->b:Lced;

    iget-object v1, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lced;->b(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcec;->a()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcec;->am:Z

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcec;->al:Z

    .line 430
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcec;->al:Z

    .line 425
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcec;->g:Lcdv;

    invoke-virtual {v0}, Lcdv;->c()V

    .line 429
    iget-object v0, p0, Lcec;->i:Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;->c()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 192
    invoke-super {p0, p1}, Limg;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcec;->getLoaderManager()Lcj;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lfe;->u()V

    .line 197
    :cond_0
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 119
    iget-object v0, p0, Lcec;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcec;->ak:Lhpu;

    .line 120
    iget-object v0, p0, Lcec;->binder:Lilh;

    const-class v1, Lazl;

    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazl;

    iput-object v0, p0, Lcec;->an:Lazl;

    .line 121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 277
    sget v1, Laen;->by:I

    if-ne v0, v1, :cond_1

    .line 278
    iget-object v0, p0, Lcec;->g:Lcdv;

    invoke-virtual {v0}, Lcdv;->d()V

    .line 279
    const/16 v0, 0x43

    invoke-virtual {p0, v0, v2}, Lcec;->a(IZ)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sget v1, Laen;->bI:I

    if-ne v0, v1, :cond_2

    .line 281
    invoke-virtual {p0}, Lcec;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 285
    :cond_2
    const-string v0, "Babel_dialer"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected onClick() event from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Limg;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcdv;

    invoke-virtual {p0}, Lcec;->getActivity()Lba;

    move-result-object v1

    invoke-direct {v0, v1}, Lcdv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcec;->g:Lcdv;

    .line 127
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 396
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcec;->ak:Lhpu;

    invoke-interface {v0}, Lhpu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcec;->ak:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 398
    invoke-static {v0, v1, v1}, Laal;->a(Lbfd;ZI)Lez;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 142
    invoke-super {p0, p1, p2, p3}, Limg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 143
    iput-boolean v5, p0, Lcec;->am:Z

    .line 145
    sget v0, Laal;->gB:I

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1133
    sget v0, Laen;->gP:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1134
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1135
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1136
    invoke-virtual {v0, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 148
    sget v0, Laen;->bI:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    .line 149
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    sget-object v2, Lcef;->a:Lcef;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 150
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    invoke-virtual {p0}, Lcec;->getActivity()Lba;

    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    .line 2059
    new-instance v2, Lcee;

    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcee;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcee;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    sget v0, Laen;->aR:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcec;->d:Landroid/widget/TextView;

    .line 158
    sget v0, Laen;->by:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcec;->f:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcec;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcec;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcec;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcec;->getChildFragmentManager()Lbg;

    move-result-object v0

    const-class v2, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadFragment;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v2}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadFragment;

    .line 167
    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadFragment;-><init>()V

    .line 169
    invoke-virtual {p0}, Lcec;->getChildFragmentManager()Lbg;

    move-result-object v2

    invoke-virtual {v2}, Lbg;->a()Lbz;

    move-result-object v2

    sget v3, Laen;->bE:I

    const-class v4, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadFragment;

    .line 170
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lbz;->b()I

    .line 174
    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadFragment;->a(Lcdw;)V

    .line 176
    sget v0, Laen;->fj:I

    .line 177
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;

    iput-object v0, p0, Lcec;->i:Lcom/google/android/apps/hangouts/views/VoiceRatesAndBalanceView;

    .line 179
    invoke-direct {p0}, Lcec;->f()V

    .line 180
    invoke-direct {p0}, Lcec;->e()V

    .line 182
    iget-boolean v0, p0, Lcec;->al:Z

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0}, Lcec;->d()V

    .line 2361
    :cond_2
    iget-object v0, p0, Lcec;->ak:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 2362
    if-eqz v2, :cond_3

    .line 2366
    invoke-virtual {v2}, Lbfd;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2367
    iget-object v3, p0, Lcec;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcec;->context:Lill;

    invoke-virtual {v2}, Lbfd;->R()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2368
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->S:I

    .line 2369
    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    .line 2371
    invoke-virtual {v2}, Lbfd;->v()Ljava/lang/String;

    move-result-object v2

    sget v6, Lezp;->b:I

    .line 2370
    invoke-static {v2, v6}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    .line 2367
    invoke-virtual {v4, v0, v5}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2373
    iget-object v0, p0, Lcec;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_3
    :goto_1
    return-object v1

    .line 2369
    :cond_4
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->T:I

    goto :goto_0

    .line 2377
    :cond_5
    iget-object v0, p0, Lcec;->an:Lazl;

    if-eqz v0, :cond_3

    .line 2380
    iget-object v0, p0, Lcec;->an:Lazl;

    .line 2381
    invoke-virtual {p0}, Lcec;->getActivity()Lba;

    move-result-object v2

    invoke-virtual {p0}, Lcec;->getLifecycle()Liog;

    move-result-object v3

    iget-object v4, p0, Lcec;->d:Landroid/widget/TextView;

    .line 2380
    invoke-interface {v0, v2, v3, v4}, Lazl;->a(Lba;Liog;Landroid/widget/TextView;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Limg;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcec;->g:Lcdv;

    invoke-virtual {v0}, Lcdv;->a()V

    .line 224
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0, p1}, Limg;->onHiddenChanged(Z)V

    .line 391
    if-nez p1, :cond_0

    iget-object v0, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 392
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 264
    sget v1, Laen;->bI:I

    if-ne v0, v1, :cond_0

    .line 265
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcec;->b()V

    .line 267
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p2}, Lcec;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Lfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    iget-object v2, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 293
    sget v4, Laen;->by:I

    if-ne v3, v4, :cond_0

    .line 294
    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 295
    iget-object v2, p0, Lcec;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 301
    :goto_0
    return v0

    .line 297
    :cond_0
    sget v2, Laen;->bI:I

    if-ne v3, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcec;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move v0, v1

    .line 299
    goto :goto_0

    :cond_1
    move v0, v1

    .line 301
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Limg;->onPause()V

    .line 209
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Limg;->onResume()V

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcec;->aj:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcec;->f()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Limg;->onStop()V

    .line 214
    iget-boolean v0, p0, Lcec;->e:Z

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcec;->e:Z

    .line 216
    invoke-virtual {p0}, Lcec;->a()V

    .line 218
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
