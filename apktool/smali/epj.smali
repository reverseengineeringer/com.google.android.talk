.class public final Lepj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

.field private final b:Lepa;

.field private final c:Lepa;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/quantum/snackbar/Snackbar;Lepa;Lepa;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v2, p0, Lepj;->d:Z

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lepj;->e:I

    .line 23
    iput-object p1, p0, Lepj;->a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 24
    iput-object p2, p0, Lepj;->b:Lepa;

    .line 25
    iput-object p3, p0, Lepj;->c:Lepa;

    .line 26
    invoke-virtual {p2}, Lepa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iput v1, p0, Lepj;->e:I

    .line 28
    iput-boolean v1, p0, Lepj;->d:Z

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p2}, Lepa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lepj;->e:I

    .line 31
    iput-boolean v2, p0, Lepj;->d:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lepj;->a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    sget v1, Laen;->eg:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    invoke-static {p1, p2, v0}, Laal;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    const/4 v3, 0x0

    .line 37
    iget-boolean v0, p0, Lepj;->d:Z

    if-eqz v0, :cond_1

    .line 38
    iget v0, p0, Lepj;->e:I

    if-gtz v0, :cond_0

    .line 39
    iput-boolean v3, p0, Lepj;->d:Z

    .line 40
    iget-object v0, p0, Lepj;->a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v1, p0, Lepj;->b:Lepa;

    invoke-virtual {v1}, Lepa;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lepj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    invoke-static {p0, v4, v5}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 65
    :goto_1
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lepj;->b:Lepa;

    invoke-virtual {v0}, Lepa;->b()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget v1, p0, Lepj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 44
    iget v2, p0, Lepj;->e:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Lepj;->e:I

    .line 45
    iget v1, p0, Lepj;->e:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lepj;->a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v2, p0, Lepj;->b:Lepa;

    invoke-virtual {v2}, Lepa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lepj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lepj;->c:Lepa;

    invoke-virtual {v0}, Lepa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lepj;->a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v1, p0, Lepj;->c:Lepa;

    invoke-virtual {v1}, Lepa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    :cond_2
    iget v0, p0, Lepj;->e:I

    iget-object v1, p0, Lepj;->c:Lepa;

    invoke-virtual {v1}, Lepa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 55
    iget-object v0, p0, Lepj;->a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v1, p0, Lepj;->c:Lepa;

    invoke-virtual {v1}, Lepa;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lepj;->c:Lepa;

    invoke-virtual {v2}, Lepa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lepj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lepj;->c:Lepa;

    invoke-virtual {v0}, Lepa;->b()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget v1, p0, Lepj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 59
    iget v2, p0, Lepj;->e:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lepj;->e:I

    .line 60
    iget v1, p0, Lepj;->e:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lepj;->a:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v2, p0, Lepj;->c:Lepa;

    invoke-virtual {v2}, Lepa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lepj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {p0, v4, v5}, Laal;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method
