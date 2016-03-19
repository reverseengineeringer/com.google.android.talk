.class final Ldld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldlc;


# direct methods
.method constructor <init>(Ldlc;I)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Ldld;->b:Ldlc;

    iput p2, p0, Ldld;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Ldld;->b:Ldlc;

    .line 1020
    iget-object v0, v0, Ldlc;->c:Ljava/util/List;

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 167
    iget-object v0, p0, Ldld;->b:Ldlc;

    .line 2020
    iget-object v0, v0, Ldlc;->c:Ljava/util/List;

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldle;

    .line 168
    iget v2, p0, Ldld;->a:I

    iget v3, v0, Ldle;->a:I

    and-int/2addr v2, v3

    .line 169
    if-eqz v2, :cond_0

    .line 170
    iget-object v0, v0, Ldle;->b:Ldli;

    iget-object v2, p0, Ldld;->b:Ldlc;

    iget-object v2, v2, Ldlc;->a:Ljava/lang/String;

    iget-object v2, p0, Ldld;->b:Ldlc;

    iget-object v2, v2, Ldlc;->b:Ldns;

    invoke-interface {v0, v2}, Ldli;->a(Ldns;)V

    .line 165
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method
