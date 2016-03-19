.class public final Lmmy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lmmz;

.field private final c:Lmng;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmng;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lmmy;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lmmy;->c:Lmng;

    .line 56
    new-instance v0, Lmmz;

    invoke-direct {v0}, Lmmz;-><init>()V

    iput-object v0, p0, Lmmy;->b:Lmmz;

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    iget-object v1, p0, Lmmy;->a:Ljava/lang/String;

    .line 1085
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {p2}, Lmng;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1088
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p2}, Lmng;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_2
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lmmy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2097
    invoke-virtual {p2}, Lmng;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    invoke-virtual {p2}, Lmng;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2099
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    invoke-virtual {p2}, Lmng;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    :cond_3
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lmmy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p2}, Lmng;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmmy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lmmy;->b:Lmmz;

    new-instance v1, Lmne;

    invoke-direct {v1, p1, p2}, Lmne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmmz;->a(Lmne;)V

    .line 80
    return-void
.end method


# virtual methods
.method public a()Lmng;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lmmy;->c:Lmng;

    return-object v0
.end method

.method public b()Lmmz;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmmy;->b:Lmmz;

    return-object v0
.end method
