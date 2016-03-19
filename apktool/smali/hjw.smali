.class final Lhjw;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhbj;

.field final synthetic b:Lhju;


# direct methods
.method constructor <init>(Lhju;Lhbj;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lhjw;->b:Lhju;

    iput-object p2, p0, Lhjw;->a:Lhbj;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lhjw;->b:Lhju;

    .line 1028
    const/4 v1, 0x2

    iput v1, v0, Lhju;->c:I

    .line 115
    iget-object v0, p0, Lhjw;->a:Lhbj;

    invoke-interface {v0, p0}, Lhbj;->b(Lhbn;)V

    .line 116
    iget-object v0, p0, Lhjw;->b:Lhju;

    invoke-virtual {v0}, Lhju;->a()V

    .line 117
    return-void
.end method
