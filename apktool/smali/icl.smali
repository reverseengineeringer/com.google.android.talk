.class final Licl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijh;


# instance fields
.field final synthetic a:Licj;


# direct methods
.method constructor <init>(Licj;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Licl;->a:Licj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 182
    new-instance v0, Liac;

    iget-object v1, p0, Licl;->a:Licj;

    .line 1036
    iget-object v1, v1, Licj;->context:Lill;

    .line 182
    invoke-direct {v0, v1}, Liac;-><init>(Landroid/content/Context;)V

    new-instance v1, Liaj;

    invoke-direct {v1}, Liaj;-><init>()V

    const-class v2, Lhzv;

    .line 184
    invoke-virtual {v1, v2}, Liaj;->a(Ljava/lang/Class;)Liaj;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Liac;->a(Liaj;)Liac;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Liac;->a()Landroid/content/Intent;

    move-result-object v0

    .line 186
    iget-object v1, p0, Licl;->a:Licj;

    .line 2036
    iget-object v1, v1, Licj;->b:Lhsc;

    .line 186
    sget v2, Laal;->uB:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method
