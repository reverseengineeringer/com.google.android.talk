.class final Lhjv;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhju;


# direct methods
.method constructor <init>(Lhju;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lhjv;->a:Lhju;

    invoke-direct {p0}, Lhku;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhkw;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lhjv;->a:Lhju;

    .line 1028
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhju;->b:Z

    .line 97
    iget-object v0, p0, Lhjv;->a:Lhju;

    .line 2028
    iget-object v0, v0, Lhju;->a:Lhks;

    .line 97
    invoke-interface {v0, p0}, Lhks;->b(Lhku;)V

    .line 98
    iget-object v0, p0, Lhjv;->a:Lhju;

    invoke-virtual {v0}, Lhju;->a()V

    .line 99
    return-void
.end method
