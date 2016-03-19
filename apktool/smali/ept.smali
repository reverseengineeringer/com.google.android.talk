.class public Lept;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljsb;
.implements Ljsl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/apps/tiktok/inject/processor/AccountAndActivityComponentCreator;",
        "Ljsl;"
    }
.end annotation


# instance fields
.field public final a:Ljse;

.field public b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public d:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public e:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public f:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public g:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public h:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public i:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public j:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public k:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public l:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public m:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public n:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public o:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public final synthetic p:Ldjj;


# direct methods
.method public constructor <init>(Ldjj;Ljse;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 2905
    iput-object p1, p0, Lept;->p:Ldjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2906
    if-nez p2, :cond_0

    .line 2907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2909
    :cond_0
    iput-object p2, p0, Lept;->a:Ljse;

    .line 2916
    iget-object v0, p0, Lept;->a:Ljse;

    .line 3026
    new-instance v1, Ljsf;

    invoke-direct {v1, v0}, Ljsf;-><init>(Ljse;)V

    .line 2917
    invoke-static {v1}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->b:Lkog;

    .line 4023
    sget-object v0, Ljsm;->a:Ljsm;

    .line 2920
    invoke-static {v0}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->c:Lkog;

    .line 2922
    const/4 v0, 0x2

    new-array v0, v0, [Lkog;

    const/4 v1, 0x0

    iget-object v2, p0, Lept;->c:Lkog;

    aput-object v2, v0, v1

    .line 5022
    sget-object v1, Ljsv;->a:Ljsv;

    .line 2925
    aput-object v1, v0, v3

    .line 2923
    invoke-static {v0}, Lmhj;->a([Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->d:Lkog;

    .line 2928
    invoke-static {v3}, Lmhg;->a(I)Lmhh;

    move-result-object v0

    const-string v1, "ignored"

    .line 6021
    sget-object v2, Ljsu;->a:Ljsu;

    .line 2929
    invoke-virtual {v0, v1, v2}, Lmhh;->a(Ljava/lang/Object;Lkog;)Lmhh;

    move-result-object v0

    .line 2930
    invoke-virtual {v0}, Lmhh;->a()Lmhg;

    move-result-object v0

    iput-object v0, p0, Lept;->e:Lkog;

    .line 2932
    iget-object v0, p0, Lept;->b:Lkog;

    iget-object v1, p0, Lept;->d:Lkog;

    iget-object v2, p0, Lept;->p:Ldjj;

    .line 6149
    iget-object v2, v2, Ldjj;->H:Lkog;

    .line 2937
    iget-object v3, p0, Lept;->e:Lkog;

    .line 7051
    new-instance v4, Ljss;

    invoke-direct {v4, v0, v1, v2, v3}, Ljss;-><init>(Lkog;Lkog;Lkog;Lkog;)V

    .line 2933
    invoke-static {v4}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->f:Lkog;

    .line 2940
    iget-object v0, p0, Lept;->b:Lkog;

    .line 8031
    new-instance v1, Lepu;

    invoke-direct {v1, v0}, Lepu;-><init>(Lkog;)V

    .line 2941
    iput-object v1, p0, Lept;->g:Lkog;

    .line 2944
    iget-object v0, p0, Lept;->g:Lkog;

    .line 9025
    new-instance v1, Leps;

    invoke-direct {v1, v0}, Leps;-><init>(Lkog;)V

    .line 2945
    iput-object v1, p0, Lept;->h:Lkog;

    .line 2947
    iget-object v0, p0, Lept;->b:Lkog;

    .line 9028
    new-instance v1, Ljsn;

    invoke-direct {v1, v0}, Ljsn;-><init>(Lkog;)V

    .line 2948
    invoke-static {v1}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->i:Lkog;

    .line 10024
    sget-object v0, Ljso;->a:Ljso;

    .line 2952
    iput-object v0, p0, Lept;->j:Lkog;

    .line 2954
    iget-object v0, p0, Lept;->i:Lkog;

    iget-object v1, p0, Lept;->j:Lkog;

    .line 11034
    new-instance v2, Ljsp;

    invoke-direct {v2, v0, v1}, Ljsp;-><init>(Lkog;Lkog;)V

    .line 2955
    iput-object v2, p0, Lept;->k:Lkog;

    .line 2958
    iget-object v0, p0, Lept;->k:Lkog;

    .line 12030
    new-instance v1, Lhsn;

    invoke-direct {v1, v0}, Lhsn;-><init>(Lkog;)V

    .line 2959
    invoke-static {v1}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->l:Lkog;

    .line 2963
    iget-object v0, p0, Lept;->b:Lkog;

    iget-object v1, p0, Lept;->k:Lkog;

    .line 12037
    new-instance v2, Lhsm;

    invoke-direct {v2, v0, v1}, Lhsm;-><init>(Lkog;Lkog;)V

    .line 2964
    invoke-static {v2}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->m:Lkog;

    .line 2968
    iget-object v0, p0, Lept;->b:Lkog;

    iget-object v1, p0, Lept;->p:Ldjj;

    .line 12149
    iget-object v1, v1, Ldjj;->I:Lkog;

    .line 2972
    iget-object v2, p0, Lept;->p:Ldjj;

    .line 13149
    iget-object v2, v2, Ldjj;->J:Lkog;

    .line 14039
    new-instance v3, Ljrb;

    invoke-direct {v3, v0, v1, v2}, Ljrb;-><init>(Lkog;Lkog;Lkog;)V

    .line 2969
    invoke-static {v3}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->n:Lkog;

    .line 2975
    iget-object v1, p0, Lept;->b:Lkog;

    iget-object v2, p0, Lept;->k:Lkog;

    iget-object v0, p0, Lept;->p:Ldjj;

    .line 14149
    iget-object v3, v0, Ldjj;->H:Lkog;

    .line 2980
    iget-object v0, p0, Lept;->p:Ldjj;

    .line 15149
    iget-object v4, v0, Ldjj;->I:Lkog;

    .line 2981
    iget-object v0, p0, Lept;->p:Ldjj;

    .line 16149
    iget-object v5, v0, Ldjj;->z:Lkog;

    .line 2982
    iget-object v6, p0, Lept;->n:Lkog;

    .line 17073
    new-instance v0, Ljqs;

    invoke-direct/range {v0 .. v6}, Ljqs;-><init>(Lkog;Lkog;Lkog;Lkog;Lkog;Lkog;)V

    .line 2976
    invoke-static {v0}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Lept;->o:Lkog;

    .line 2911
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lept;->h:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;

    return-object v0
.end method

.method public b()Ljsr;
    .locals 1

    .prologue
    .line 17988
    iget-object v0, p0, Lept;->f:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsr;

    return-object v0
.end method

.method public c()Ldda;
    .locals 1

    .prologue
    .line 17998
    new-instance v0, Ldda;

    .line 18006
    invoke-direct {v0, p0}, Ldda;-><init>(Lept;)V

    .line 17998
    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18873
    invoke-virtual {p0}, Lept;->c()Ldda;

    move-result-object v0

    return-object v0
.end method
