.class public final Lekw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liov;
.implements Lioz;


# instance fields
.field private final a:Lijc;

.field private final b:Lhqb;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lijc;Lhqb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lekw;->a:Lijc;

    .line 59
    iput-object p2, p0, Lekw;->b:Lhqb;

    .line 60
    iput-object p3, p0, Lekw;->c:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lekw;->d:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lekw;->e:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lekw;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lekw;->b:Lhqb;

    iget-object v2, p0, Lekw;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    :goto_0
    iget-object v2, p0, Lekw;->b:Lhqb;

    iget-object v3, p0, Lekw;->e:Ljava/lang/String;

    const-string v4, "ANY_RINGTONE_NOT_SILENT"

    invoke-interface {v2, v3, v4}, Lhqb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lekw;->b:Lhqb;

    iget-object v4, p0, Lekw;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 77
    if-nez v0, :cond_0

    .line 78
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gX:I

    .line 88
    :goto_1
    iget-object v1, p0, Lekw;->a:Lijc;

    invoke-virtual {v1, v0}, Lijc;->h(I)V

    .line 89
    return-void

    .line 79
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 80
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->hy:I

    goto :goto_1

    .line 81
    :cond_1
    if-eqz v2, :cond_2

    .line 82
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->hz:I

    goto :goto_1

    .line 83
    :cond_2
    if-eqz v1, :cond_3

    .line 84
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sC:I

    goto :goto_1

    .line 86
    :cond_3
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jl:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
