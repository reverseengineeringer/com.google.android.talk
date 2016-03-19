.class public Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;
.super Lcbr;
.source "SourceFile"


# static fields
.field private static final r:[[I

.field private static final s:[Ljava/lang/String;


# instance fields
.field public final n:Lhpu;

.field public o:Lbfd;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-array v0, v6, [[I

    new-array v1, v6, [I

    sget v2, Laen;->gR:I

    aput v2, v1, v3

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->te:I

    aput v2, v1, v4

    aput v3, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [I

    sget v2, Laen;->gT:I

    aput v2, v1, v3

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->tf:I

    aput v2, v1, v4

    aput v4, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget v2, Laen;->gU:I

    aput v2, v1, v3

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->tg:I

    aput v2, v1, v4

    aput v5, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->r:[[I

    .line 55
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "voice_android_calling"

    aput-object v1, v0, v3

    const-string v1, "voice_rates"

    aput-object v1, v0, v4

    const-string v1, "voice_legal"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcbr;-><init>()V

    .line 41
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->A:Lilh;

    .line 42
    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->n:Lhpu;

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->d(I)V

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcbr;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 140
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->o:Lbfd;

    const/16 v1, 0x44a

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 146
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->finish()V

    .line 148
    return-void

    .line 142
    :cond_1
    if-nez p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->o:Lbfd;

    const/16 v1, 0x44b

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Lcbr;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Laal;->gV:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->setContentView(I)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->n:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->o:Lbfd;

    .line 67
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ff:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    sget v0, Laen;->gS:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->p:Landroid/widget/Button;

    .line 70
    sget v0, Laen;->gQ:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->q:Landroid/widget/Button;

    .line 72
    sget-object v6, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->r:[[I

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 73
    aget v0, v1, v4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    aget v2, v1, v13

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->s:[Ljava/lang/String;

    const/4 v9, 0x2

    aget v1, v1, v9

    aget-object v1, v8, v1

    .line 1050
    const-string v8, "https://www.google.com/support/hangouts/?hl=%locale%"

    invoke-static {v8, v1}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1151
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1152
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 1153
    array-length v8, v2

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_0

    aget-object v9, v2, v3

    .line 1154
    invoke-interface {v1, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 1155
    invoke-interface {v1, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 1156
    invoke-interface {v1, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1157
    new-instance v12, Ldie;

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, p0, v9}, Ldie;-><init>(Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;Ljava/lang/String;)V

    .line 1158
    invoke-interface {v1, v12, v10, v11, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1160
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setSelected(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->q:Landroid/widget/Button;

    new-instance v1, Ldib;

    invoke-direct {v1, p0}, Ldib;-><init>(Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->p:Landroid/widget/Button;

    new-instance v1, Ldid;

    invoke-direct {v1, p0}, Ldid;-><init>(Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcbr;->onStart()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->g()Lqe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqe;->a(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->o:Lbfd;

    const/16 v1, 0x449

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 128
    return-void
.end method
