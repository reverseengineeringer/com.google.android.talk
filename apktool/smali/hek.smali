.class public final Lhek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lhca;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lhek;->b:I

    .line 24
    iput v0, p0, Lhek;->c:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lhek;->b:I

    return v0
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lhbs;->a(III)V

    .line 45
    iput p1, p0, Lhek;->b:I

    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lhek;->a:Lhca;

    .line 49
    :cond_0
    return-void
.end method

.method a(Lhca;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lhek;->a:Lhca;

    .line 1188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Lhca;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laal;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lhca;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lhek;->a:Lhca;

    .line 37
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    iget v0, p0, Lhek;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 2134
    :goto_0
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 64
    iput v1, p0, Lhek;->c:I

    .line 65
    return-void

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0
.end method
