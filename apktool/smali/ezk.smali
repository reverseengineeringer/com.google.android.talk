.class public final Lezk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lhos;

.field private final c:Z

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lezk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lezl;->a:Lhof;

    invoke-virtual {v0, p1, p2}, Lhof;->a(Ljava/lang/String;Ljava/lang/String;)Lhos;

    move-result-object v0

    iput-object v0, p0, Lezk;->b:Lhos;

    .line 100
    iput-object p2, p0, Lezk;->a:Ljava/lang/String;

    .line 101
    iput-boolean p3, p0, Lezk;->c:Z

    .line 105
    const/4 v1, 0x0

    .line 106
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 108
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_3
    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lezk;->g:Ljava/lang/String;

    .line 121
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lezk;)Lhoo;
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lezk;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lezk;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 251
    :goto_0
    if-nez v0, :cond_2

    .line 252
    sget-object v0, Lhoo;->b:Lhoo;

    .line 255
    :goto_1
    return-object v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lezk;->g:Ljava/lang/String;

    iget-object v1, p1, Lezk;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_2
    sget-object v0, Lezl;->a:Lhof;

    iget-object v1, p0, Lezk;->b:Lhos;

    iget-object v2, p1, Lezk;->b:Lhos;

    invoke-virtual {v0, v1, v2}, Lhof;->a(Lhos;Lhos;)Lhoo;

    move-result-object v0

    goto :goto_1
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lezl;->a:Lhof;

    iget-object v1, p0, Lezk;->b:Lhos;

    invoke-virtual {v0, v1, p1}, Lhof;->a(Lhos;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lezk;->c:Z

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lezk;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lezk;->f()Ljava/lang/String;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 178
    :goto_0
    sget-object v0, Lezl;->a:Lhof;

    invoke-virtual {v0, p1}, Lhof;->e(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 1069
    sget-object v1, Lhox;->a:Lhox;

    .line 134
    iget-object v0, p0, Lezk;->b:Lhos;

    .line 135
    invoke-virtual {v0}, Lhos;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lezk;->a:Ljava/lang/String;

    .line 136
    invoke-static {v0}, Lknq;->c(Ljava/lang/Object;)Lknq;

    move-result-object v0

    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lknq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-virtual {v1, v2, v0}, Lhox;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Lhos;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lezk;->b:Lhos;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lezk;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lezl;->a:Lhof;

    iget-object v1, p0, Lezk;->b:Lhos;

    invoke-virtual {v0, v1}, Lhof;->b(Lhos;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lezk;->d:Ljava/lang/Boolean;

    .line 162
    :cond_0
    iget-object v0, p0, Lezk;->d:Ljava/lang/Boolean;

    .line 2015
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 162
    return v0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lezk;->f:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lezk;->b:Lhos;

    invoke-virtual {v0}, Lhos;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lezk;->f:Ljava/lang/Long;

    .line 190
    :cond_0
    iget-object v0, p0, Lezk;->f:Ljava/lang/Long;

    .line 2051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 190
    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lezk;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lezl;->a:Lhof;

    iget-object v1, p0, Lezk;->b:Lhos;

    invoke-virtual {v0, v1}, Lhof;->c(Lhos;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lezk;->e:Ljava/lang/String;

    .line 205
    :cond_0
    iget-object v0, p0, Lezk;->e:Ljava/lang/String;

    return-object v0
.end method
