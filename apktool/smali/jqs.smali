.class public final Ljqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkog;"
    }
.end annotation


# instance fields
.field private final a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final d:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final e:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final f:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkog;Lkog;Lkog;Lkog;Lkog;Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljqs;->a:Lkog;

    .line 39
    iput-object p2, p0, Ljqs;->b:Lkog;

    .line 41
    iput-object p3, p0, Ljqs;->c:Lkog;

    .line 43
    iput-object p4, p0, Ljqs;->d:Lkog;

    .line 45
    iput-object p5, p0, Ljqs;->e:Lkog;

    .line 47
    iput-object p6, p0, Ljqs;->f:Lkog;

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1052
    iget-object v0, p0, Ljqs;->a:Lkog;

    .line 1054
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    iget-object v0, p0, Ljqs;->b:Lkog;

    .line 1055
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liog;

    iget-object v0, p0, Ljqs;->c:Lkog;

    .line 1056
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrc;

    iget-object v4, p0, Ljqs;->d:Lkog;

    iget-object v5, p0, Ljqs;->e:Lkog;

    iget-object v6, p0, Ljqs;->f:Lkog;

    .line 4022
    instance-of v3, v1, Ljrz;

    const-string v7, "Given class does not have a peer"

    invoke-static {v3, v7}, Lfii;->b(ZLjava/lang/Object;)V

    move-object v3, v1

    .line 4024
    check-cast v3, Ljrz;

    invoke-interface {v3}, Ljrz;->g()Ljava/lang/Class;

    move-result-object v3

    .line 2055
    const-class v7, Ljqv;

    .line 2054
    invoke-virtual {v0, v3, v7}, Ljrc;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljqv;

    .line 2057
    if-nez v0, :cond_0

    .line 2058
    invoke-interface {v6}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 1060
    :goto_0
    if-nez v0, :cond_3

    .line 1061
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2061
    :cond_0
    invoke-interface {v0}, Ljqv;->a()Ljava/lang/Class;

    move-result-object v0

    .line 2062
    const-class v3, Lhzy;

    if-ne v0, v3, :cond_1

    .line 2063
    new-instance v0, Lhzy;

    check-cast v1, Lba;

    .line 2064
    invoke-interface {v4}, Lkog;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpz;

    invoke-interface {v5}, Lkog;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Liaf;

    sget-object v5, Lian;->a:Lian;

    invoke-direct/range {v0 .. v5}, Lhzy;-><init>(Lba;Liog;Lhpz;Liaf;Lian;)V

    goto :goto_0

    .line 2065
    :cond_1
    const-class v3, Lhqo;

    if-ne v0, v3, :cond_2

    .line 2066
    new-instance v3, Lhqo;

    invoke-interface {v4}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    sget-object v4, Lhpy;->a:Lhpy;

    invoke-direct {v3, v1, v2, v0, v4}, Lhqo;-><init>(Landroid/app/Activity;Liog;Lhpz;Lhpy;)V

    move-object v0, v3

    goto :goto_0

    .line 2069
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected account handler class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    return-object v0
.end method
